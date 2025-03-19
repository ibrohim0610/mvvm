
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:recipe_app/core/data/models/create_review_model.dart';
import 'package:recipe_app/features/sign_up/data/models/auth_model.dart';

class ApiClient {
  ApiClient() {dio = Dio(BaseOptions(baseUrl: "http://10.10.1.173:8888/api/v1", validateStatus: (status) => true));}
late final Dio dio;
  
  
  Future<List<dynamic>> fetchCommunity(int? limit, String? order, bool descending)async{
    var response =  await dio.get('/recipes/community/list?Limit=$limit&Order$order&Descending$descending');
    List<dynamic> data = response.data;
    return data;
  }
  // Future<>
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
  Future<dynamic> fetchTrendingRecipe() async {
    var response = await dio.get('/recipes/trending-recipe');
    return response.data;
  }

  Future<List<dynamic>> fetchYourRecipes(int limit)async{
    var response = await dio.get('/recipes/list?Limit=$limit');
    if (response.statusCode == 200) {
      List<dynamic> data = response.data;
      return data;
    }else{
      throw Exception("/recipes/list so'rovimiz oxshamadi");
    }
  }
  Future<List<dynamic>> fetchTopChefs(int limit) async {
    var response = await dio.get('/auth/top-chefs?Limit=$limit');
    List<dynamic> data = response.data;
    return data;
  }

  Future<List<dynamic>>fetchRecipes(int categoryId)async{
    var response = await dio.get('/recipes/list?Category=$categoryId');
    List<dynamic> data = response.data;
    return data;
  }

  Future<List<dynamic>>fetchRecentRecipes(int limit)async{
    var response = await dio.get('/recipes/list?Limit=$limit');
    List<dynamic> data = response.data;
    return data;
  }
  Future<dynamic> fetchRecipesById(int recipeId)async{
    var response = await dio.get('/recipes/detail/$recipeId');
    dynamic data =  response.data;
    return data;
  }
  Future<Map<String,dynamic>> fetchReview(int recipeId) async {
    var response = await dio.get('/recipes/reviews/detail/$recipeId');
    if (response.statusCode == 200) {
      return Map<String,dynamic>.from(response.data);
    } else {
      throw Exception("Sharhlarni yuklab bo‘lmadi!");
    }
  }
  Future<List<dynamic>> fetchReviewComment(int reviewId) async {
    var response = await dio.get('/reviews/list?recipeId=$reviewId');
    if (response.statusCode == 200) {
      return response.data;
    }else{
      throw Exception("/reviews/list?recipeId=$reviewId so'rovimizda xatolik!");
    }
  }
  Future<bool>createReview(CreateReviewModel model)async{
    final formData = FormData.fromMap(await model.toJson());
    final response = await dio.post('/reviews/create',
    options: Options(headers: {
      "Authorization":
          "Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImFuZHJld0BnbWFpbC5jb20iLCJqdGkiOiI1MGY3OWUzMi04OWExLTQ2ZGEtOWVkMi04NmEwNGY2YTkyNjgiLCJ1c2VyaWQiOiIxIiwiZXhwIjoxODM2OTk3OTMwLCJpc3MiOiJsb2NhbGhvc3QiLCJhdWQiOiJhdWRpZW5jZSJ9.fPJTubTifP1m4F1U9NgbOBiOmUg_fQr_tRadPHSfz10"
    },
    ),
      data: formData,
    );
    if (response.statusCode == 201) {
      return true;
    } else{
      return false;
    }
  }
  Future<T> genericGetRequest<T>(String path, {Map<String, dynamic>? queryParams}) async {
    var response = await dio.get(path, queryParameters: queryParams);
    if (response.statusCode == 200) {
      return response.data as T;
    } else {
      throw DioException(requestOptions: response.requestOptions, response: response);
    }
  }

  Future<String> login(String login, String password) async {
    var response = await dio.post('/auth/login',
        data: {'login': login, 'password': password}
    );
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
  Future uploadProfilePhoto(File file) async {
    FormData formData = FormData.fromMap(
        {'file':  await MultipartFile.fromFile(file.path, filename: file.path.split('/').last)},
    );
    var response  = await dio.post(
      '/auth/upload',
      data: formData,
      options: Options(
        headers: {"Content - Type": 'multipart/form-data'}
      )
    );
  }

}