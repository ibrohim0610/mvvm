// import 'package:dio/dio.dart';
//
// class ApiClient {
//   final Dio dio = Dio(
//     BaseOptions(baseUrl: "http://172.23.208.1:8888/api/v1"),
//   );
//
//   Future<List<dynamic>> fetchCategories() async {
//     var response = await dio.get('/categories/list');
//     List<dynamic> data = response.data;
//     return data;
//   }
//
//   Future<List<dynamic>> fetchRecipes(int categoryId)async{
//     var response = await dio.get('/recipes/List?Category=$categoryId');
//     List<dynamic> data = response.data;
//     return data;
//   }
//   Future<dynamic> fetchProfile() async {
//     var response = await dio.get('/auth/details/1');
//
//     return response.data;
//   }
//
//   Future<List<dynamic>> fetchTopChefs(int limit) async {
//     return [
//       {
//         "id": 1,
//         "firstName": "Joseph",
//         "photo": "assets/images/edward.png",
//       },
//       {
//         "id": 2,
//         "firstName": "Andrew",
//         "photo": "assets/images/edward.png",
//       },
//       {
//         "id": 3,
//         "firstName": "Emily",
//         "photo": "assets/images/edward.png",
//       },
//       {
//         "id": 4,
//         "firstName": "Jessica",
//         "photo": "assets/images/edward.png",
//       },
//     ];
//   }
// }




import 'package:dio/dio.dart';

class ApiClient {
  final Dio dio = Dio(BaseOptions(baseUrl: "http://10.10.3.111:8888/api/v1"));


  Future<Map<String, dynamic>> fetchProfile() async {
    var responseProfile = await dio.get("/auth/details/1");

    return responseProfile.data;
  }
}