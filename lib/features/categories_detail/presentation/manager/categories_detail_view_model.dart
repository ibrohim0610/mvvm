import 'package:flutter/material.dart';
import 'package:recipe_app/features/categories/data/models/categories_model.dart';
import 'package:recipe_app/features/categories/data/repositories/categories_repository.dart';
import 'package:recipe_app/features/categories_detail/data/models/categories_detail_model.dart';
import 'package:recipe_app/features/categories_detail/data/repositories/categories_detail_repositories.dart';

class CategoriesDetailViewModel extends ChangeNotifier{

  CategoriesDetailViewModel( {required this.selected,
    required CategoriesDetailRepositories repo,
    required CategoriesRepository catsRepo}):
        _repo =repo,
        _catsRepo=catsRepo{
    load();

  }
  final CategoriesDetailRepositories _repo;
  final CategoriesRepository _catsRepo;

  List<CategoriesDetailModel> recipes = [];
  List<CategoryModel> categories = [];

  final CategoryModel selected;

  Future<void >load()async{
    categories = await _catsRepo.fetchCategories();
    recipes = await _repo.fetchRecipes(selected.id);
    notifyListeners();
  }
}
