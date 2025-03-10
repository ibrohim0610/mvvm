
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:recipe_app/features/sign_up/data/models/auth_model.dart';

class ApiClient {
<<<<<<< HEAD
  ApiClient() {dio = Dio(BaseOptions(baseUrl: "http://10.10.2.207:8888/api/v1", validateStatus: (status) => true));}
=======
  ApiClient() {dio = Dio(BaseOptions(baseUrl: "http://10.10.2.159:8888/api/v1", validateStatus: (status) => true));}
>>>>>>> origin/master
late final Dio dio;
  
  
  Future<List<dynamic>> fetchCommunity(int? limit, String? order, bool descending)async{
    var response =  await dio.get('/recipes/community/list?Limit=$limit&Order$order&Descending$descending');
    List<dynamic> data = response.data;
    return data;
  }
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

  Future<List<dynamic>> fetchYourRecipes()async{
    var response = await dio.get('/recipes/list?Limit');
    if (response.statusCode == 200) {
      List<dynamic> data = response.data;
      return data;
    }else{
      throw Exception("/recipes/list so'rovimiz oxshamadi");
    }
  }

  Future<List<dynamic>>fetchRecipes(int categoryId)async{
    var response = await dio.get('/recipes/list?Category=$categoryId');
    List<dynamic> data = response.data;
    return data;
  }
  Future<dynamic> fetchRecipesById(int recipeId)async{
    var response = await dio.get('/recipes/detail/$recipeId');
    dynamic data =  response.data;
    return data;
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