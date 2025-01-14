import 'package:dio/dio.dart';

class ApiClient {
  static String home = '13.232.186.30';
  static String najot = '10.10.';
  Dio dio = Dio(BaseOptions(baseUrl: "http://$home:8888/api/v1"));

  Future<List<dynamic>> fetchCategories() async {
    var response = await dio.get('/categories/list');
    List<dynamic> data = response.data;
    return data;
  }

  Future<List<dynamic>> fetchRecipes(int categoryId) async {
    var response = await dio.get('/recipes/list?Category=$categoryId');
    List<dynamic> data = response.data;
    return data;
  }

 Future<dynamic> fetchRecipesById(int recipeId) async{
    var response = await dio.get('/recipes/detail/$recipeId');
    dynamic data = response.data;
    return data;
 }
}
