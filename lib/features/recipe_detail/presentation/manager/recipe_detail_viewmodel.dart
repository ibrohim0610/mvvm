import 'package:flutter/cupertino.dart';
import 'package:recipe_app/features/recipe_detail/data/models/recipes_model.dart';
import 'package:recipe_app/core/data/repositories/recipe_repository.dart';

class RecipeDetailViewmodel extends ChangeNotifier{

  RecipeDetailViewmodel({
    required RecipeRepository repo,
    required this.recipeId
  }):_recipeRepo=repo{
    load();
}
  final RecipeRepository _recipeRepo;
  bool isLoading = true;
  final int recipeId;
  late final RecipesModel recipe;

  Future<void>load() async{
    isLoading = true;
    notifyListeners();

    recipe = await _recipeRepo.fetchRecipeById(recipeId);
    isLoading = false;
    notifyListeners();
  }


}