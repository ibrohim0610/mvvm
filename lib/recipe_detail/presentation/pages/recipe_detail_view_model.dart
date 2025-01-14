import 'package:flutter/material.dart';
import 'package:recipe_app/categories_detail/data/models/recipe_model_small.dart';
import 'package:recipe_app/recipe_detail/data/models/user_model_recipe_detail.dart';

import '../../data/models/recipe_model.dart';
import '../../data/repositories/recipe_detail_repository.dart';

class RecipeDetailViewModel extends ChangeNotifier {
  RecipeDetailViewModel({
    required RecipeDetailRepository repo,
    required this.selected,
  }) : _repo = repo {
    load();
  }

  final RecipeDetailRepository _repo;
  bool loading = true;
  RecipeModel? recipe;
  RecipeModelSmall selected;

  Future<void> load() async {
    recipe = await _repo.fetchRecipeById(selected.id);
    loading = false;
    notifyListeners();
  }
}
