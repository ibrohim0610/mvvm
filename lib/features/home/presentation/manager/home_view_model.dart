import 'package:flutter/cupertino.dart';
import 'package:recipe_app/features/categories_detail/data/models/categories_detail_model.dart';
import 'package:recipe_app/features/home/data/repositories/home_repository.dart';

import '../../../categories/data/models/categories_model.dart';
import '../../../categories/data/repositories/categories_repository.dart';
import '../../../recipe_detail/data/repositories/recipe_repository.dart';

class HomeViewModel extends ChangeNotifier {
  HomeViewModel({
    required CategoriesRepository catsRepo,
    required RecipeRepository recipeRepo,
  })  : _catsRepo = catsRepo,
        _recipeRepo = recipeRepo{
    load();
  }

  bool isLoading = true;

  final CategoriesRepository _catsRepo;
  final RecipeRepository _recipeRepo;


  CategoryModel? selected;
  List<CategoryModel> categories = [];
  CategoriesDetailModel? trendingRecipe;
  List<CategoriesDetailModel> yourRecipes = [];


  Future<void> load() async {
    isLoading = true;
    notifyListeners();
    categories = await _catsRepo.fetchCategories();
    yourRecipes = await _recipeRepo.fetchYourRecipes();
    trendingRecipe = await _recipeRepo.fetchTrendingRecipe();
    selected = categories.firstOrNull;
    isLoading = false;
    notifyListeners();
  }
}