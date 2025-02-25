import 'package:flutter/material.dart';
import 'package:recipe_app/features/categories/data/models/categories_model.dart';
import 'package:recipe_app/features/categories_detail/data/models/categories_detail_model.dart';

import '../../../categories/data/repositories/categories_repository.dart';
import '../../data/repositories/categories_detail_repositories.dart';

class CategoriesDetailViewModel extends ChangeNotifier {
  CategoriesDetailViewModel({
    required CategoriesDetailRepositories repo,
    required CategoriesRepository catsRepo,
    required this.selected,
  })  : _repo = repo,
        _catsRepo = catsRepo{
    load();
  }
  final CategoriesRepository _catsRepo;
  final CategoriesDetailRepositories _repo;
  List<CategoryModel> categories = [];
  List<CategoriesDetailModel> recipes = [];
  final CategoryModel selected;


  Future<void> load() async {
    try {
      categories = await _catsRepo.fetchCategories();
      recipes = await _repo.fetchRecipes(selected.id);
    } finally {
      notifyListeners();
    }
  }


}