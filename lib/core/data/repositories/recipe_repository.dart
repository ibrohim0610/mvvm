import 'package:recipe_app/core/client.dart';
import 'package:recipe_app/core/data/models/recipe_model_small.dart';
import 'package:recipe_app/core/data/models/top_chef_model_small.dart';
import 'package:recipe_app/features/recipe_detail/data/models/recipes_model.dart';

import '../../../features/categories_detail/data/models/categories_detail_model.dart';
import '../../../features/community/data/models/community_model.dart';


class RecipeRepository{
  RecipeRepository({required this.client});

  final ApiClient client;

  RecipesModel? recipe;
  CategoriesDetailModel? trendingRecipe;

  List<RecipeModelSmall> yourRecipes = [];

  List<CommunityModel> community = [];
  List<TopChefModelSmall> chefs= [];
  List<RecipeModelSmall> recentRecipes = [];


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
  Future<List<TopChefModelSmall>> fetchTopChefs(int limit) async {
    if (chefs.isNotEmpty) return chefs;
    var rawChefs = await client.fetchTopChefs(limit);
    chefs = rawChefs.map((chef) => TopChefModelSmall.fromJson(chef)).toList();
    return chefs;
  }
  Future<List<RecipeModelSmall>> fetchYourRecipes(int limit) async {
    var rawRecipe = await client.fetchYourRecipes(limit);
    return rawRecipe.map((recipe) => RecipeModelSmall.fromJson(recipe)).toList();
  }
  Future<List<RecipeModelSmall>> fetchRecentRecipes(int limit) async {
    var rawRecipes = await client.fetchRecentRecipes(limit);
    recentRecipes = rawRecipes.map((recipe) => RecipeModelSmall.fromJson(recipe)).toList();
    return recentRecipes;
  }
  Future<List<CommunityModel>>fetchCommunity(int limit, {required String order, bool descending = true}) async{
    var rawCommunity = await client.fetchCommunity(limit, order, descending);
    community = rawCommunity.map((community)=>CommunityModel.fromJson(community)).toList();
    return community;
  }

}