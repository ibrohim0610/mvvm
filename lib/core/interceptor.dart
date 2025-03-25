import 'package:dio/dio.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import '../features/sign_up/data/repositories/sign_repository.dart';
import '../main.dart';
import 'routing/router.dart';
import 'routing/routes.dart';


class AuthInterceptor extends Interceptor {
  final Dio _dio = Dio();


  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    final jwt = navigatorKey.currentContext!.read<AuthRepository>().jwt;
    if (jwt != null) {
      options.headers['Authorization'] = "Bearer $jwt";
    }

    return handler.next(options);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) async {
    if (err.response?.statusCode == 401) {
      final success = await navigatorKey.currentContext!.read<AuthRepository>().refreshToken();
      if (success) {
        err.requestOptions.headers['Authorization'] = "Bearer ${navigatorKey.currentContext!.read<AuthRepository>().jwt}";
        return handler.resolve(
          await _dio.request(
            err.requestOptions.baseUrl + err.requestOptions.path,
            options: Options(
              method: err.requestOptions.method,
              headers: err.requestOptions.headers,
            ),
            data: err.requestOptions.data,
            queryParameters: err.requestOptions.queryParameters,
          ),
        );
      } else {
        await navigatorKey.currentContext!.read<AuthRepository>().logout();
        navigatorKey.currentContext!.go(Routes.login);
        return handler.reject(err);
      }
    }
  }
}