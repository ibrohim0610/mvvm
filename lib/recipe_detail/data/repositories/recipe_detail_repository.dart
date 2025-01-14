import 'package:recipe_app/core/client.dart';
import 'package:recipe_app/recipe_detail/data/models/recipe_model.dart';

class RecipeDetailRepository {
  RecipeDetailRepository({
    required this.client,
  });

  final ApiClient client;

  late RecipeModel recipe;

  Future<RecipeModel> fetchRecipeById(int recipeId) async {
    var rawRecipe = await client.fetchRecipeById(recipeId);
    recipe = RecipeModel.fromJson(rawRecipe);
    return recipe;
  }
}
