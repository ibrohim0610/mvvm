import 'dart:ffi';

import 'package:recipe_app/categories/data/models/categories_model.dart';
import 'package:recipe_app/core/client.dart';

class CategoriesRepository{
  
  CategoriesRepository({required this.client});
  final ApiClient client;
  List<CategoryModel> categories = [];
  
  Future<List<CategoryModel>> fetchCategories() async{
    if (categories.isNotEmpty) return categories;
    var rawCategories = await client.fetchCategories();
    categories = rawCategories.map((c)=> CategoryModel.fromJson(c)).toList();
    return categories;
  }
}