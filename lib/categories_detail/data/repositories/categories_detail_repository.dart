import 'package:recipe_app/core/core.dart';

import '../models/recipe_model_small.dart';

class CategoriesDetailRepository {
  CategoriesDetailRepository({required this.client});

  final ApiClient client;
  List<RecipeModelSmall> recipes = [];

  Future<List<RecipeModelSmall>> fetchRecipes(int categoryId) async {
    List<dynamic> recipesRaw = await client.fetchRecipes(categoryId);
    recipes = recipesRaw.map((recipe) => RecipeModelSmall.fromJson(recipe)).toList();
    return recipes;
  }
}
