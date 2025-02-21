
import 'package:dio/dio.dart';
import 'package:recipe_app/features/sign_up/data/models/auth_model.dart';

class ApiClient {
  ApiClient() {dio = Dio(BaseOptions(baseUrl: "http:// 10.10.0.84:8888/api/v1", validateStatus: (status) => true));}
late final Dio dio;
  Future<Map<String, dynamic>> fetchMyProfile() async {
    var response = await dio.get("/auth/details/1");
    if (response.statusCode == 200) {
      Map<String, dynamic> data = response.data;
      return data;
    } else {
      throw Exception("Error");
    }
  }

  Future<List<Map<String, dynamic>>> fetchProfileRecipe() async {
    var response = await dio.get('/recipes/list');
    List<Map<String, dynamic>> data = List<Map<String, dynamic>>.from(response.data);
    return data;
  }

  Future<List<dynamic>> fetchOnboardingPages() async {
    var response = await dio.get("/onboarding/list");
    if (response.statusCode == 200) {
      List<dynamic> date = response.data;
      return date;
    } else {
      throw Exception("error");
    }
  }

  Future<List<dynamic>> fetchCategories() async {
    var response = await dio.get('/categories/list');
    List<dynamic> data = response.data;
    return data;
  }

  Future<String> login(String login, String password) async {
    print("client login");
    var response = await dio.post('/auth/login',
        data: {'login': login, 'password': password}
    );
    print(response.statusCode.toString());

    if (response.statusCode == 200) {
      Map<String, String> data = Map<String, String>.from(response.data);
      return data['accessToken']!;
    } else {
      throw Exception("Login qilib beomdi, xullasi nimadur no'to'g'ri ketgan");
    }
  }

  Future<bool> signUp(AuthModel model) async {
    var response = await dio.post(
      '/auth/register',
      data: model.toJson(),
    );
    // return response.statusCode == 201 ? true : false;
    if (response.statusCode == 201) {
      return true;
    } else {
      return false;
    }
  }

}