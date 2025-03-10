import 'package:recipe_app/core/client.dart';
import 'package:recipe_app/features/recipe_detail/data/models/recipes_model.dart';

import '../../../categories_detail/data/models/categories_detail_model.dart';
<<<<<<< HEAD
import '../../../community/data/models/community_model.dart';
=======
>>>>>>> origin/master

class RecipeRepository{
  RecipeRepository({required this.client});

  final ApiClient client;

  RecipesModel? recipe;
  CategoriesDetailModel? trendingRecipe;

  List<CategoriesDetailModel> yourRecipes = [];
<<<<<<< HEAD
  List<CommunityModel> community = [];
=======
>>>>>>> origin/master

  Future<CategoriesDetailModel?> fetchTrendingRecipe()async{
    var rawRecipe = await client.fetchTrendingRecipe();
    trendingRecipe = CategoriesDetailModel.fromJson(rawRecipe);
    return trendingRecipe;
  }

  Future<RecipesModel> fetchRecipeById(int recipeId)async{
    final racRecipe = await client.fetchRecipesById(recipeId);
    recipe = RecipesModel.fromJson(racRecipe);
    return recipe!;
  }
  Future<List<CategoriesDetailModel>> fetchYourRecipes() async {
    var rawRecipe = await client.fetchYourRecipes();
    return rawRecipe.map((recipe) => CategoriesDetailModel.fromJson(recipe)).toList();
  }
<<<<<<< HEAD
  Future<List<CommunityModel>>fetchCommunity(int limit, {required String order, bool descending = true}) async{
    var rawCommunity = await client.fetchCommunity(limit, order, descending);
    community = rawCommunity.map((community)=>CommunityModel.fromJson(community)).toList();
    return community;
  }
=======
>>>>>>> origin/master

}