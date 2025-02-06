import 'package:mvvm/categories/data/models/category_model.dart';
import 'package:mvvm/core/client.dart';

class CategoriesRepository{
  CategoriesRepository({required this.client});

  final ApiClient client;

  List<CategoryModel> categories = [];



  Future<List<CategoryModel>> fetchCategories() async{
    var rawCategories = await client.fetchCategories();
    categories = rawCategories.map((c) => CategoryModel.fromJson(c)).toList();
    return categories;
  }
}