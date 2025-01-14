import 'package:flutter/material.dart';
import 'package:recipe_app/categories/data/models/category_model.dart';
import 'package:recipe_app/categories/data/repositories/categories_repository.dart';

class CategoriesViewModel extends ChangeNotifier {
  CategoriesViewModel({required CategoriesRepository repo}) : _repo = repo {
    load();
  }

  final CategoriesRepository _repo;

  List<CategoryModel> categories = [];
  CategoryModel? mainCategory;

  Future<void> load() async {
    try {
      var allCategories = await _repo.fetchCategories();
      mainCategory = allCategories.where((category) => category.main).firstOrNull;
      categories = allCategories.where((category) => category.id != mainCategory?.id).toList();
    } finally {
      notifyListeners();
    }
  }
}
