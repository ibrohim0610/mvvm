import 'package:recipe_app/core/client.dart';
import 'package:recipe_app/core/data/models/recipe_model_small.dart';
import 'package:recipe_app/core/data/models/recipe_reviews_model.dart';
import 'package:recipe_app/core/data/models/top_chef_model_small.dart';
import 'package:recipe_app/core/data/models/trending_recipe/trending_recipe_model.dart';
import 'package:recipe_app/features/recipe_detail/data/models/recipes_model.dart';

import '../../../features/categories_detail/data/models/categories_detail_model.dart';
import '../../../features/community/data/models/community_model.dart';
import '../models/recipe_create_review_model.dart';
import '../models/recipe_reviews_comment_model.dart';
import '../models/trending_recipe/trending_recipes_model.dart';


class RecipeRepository{
  RecipeRepository({required this.client});

  final ApiClient client;

  RecipesModel? recipe;
  ReviewsModel? review;
  TrendingRecipeModel? trendingRecipe;
  CategoriesDetailModel? trendingHome;

  List<RecipeModelSmall> yourRecipes = [];

  List<CommunityModel> community = [];

  List<RecipeModelSmall> recentRecipes = [];
  List<ReviewCommentModel> comment = [];
  List<TrendingRecipesModel> trendingRecipes = [];

  Future<TrendingRecipeModel?> fetchTrendingRecipe()async{
    var rawRecipe = await client.fetchTrendingRecipe();
    trendingRecipe = TrendingRecipeModel.fromJson(rawRecipe);
    return trendingRecipe;
  }
  Future<CategoriesDetailModel?> fetchTrendingRecipeHome()async{
    var rawRecipe = await client.fetchTrendingRecipe();
     trendingHome= CategoriesDetailModel.fromJson(rawRecipe);
    return trendingHome;
  }

  Future<RecipesModel> fetchRecipeById(int recipeId)async{
    final racRecipe = await client.fetchRecipesById(recipeId);
    recipe = RecipesModel.fromJson(racRecipe);
    return recipe!;
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
  Future<ReviewsModel> fetchRecipeForReviews(int recipeId) async {
    var rawRecipe = await client.fetchReview(recipeId);
    review = ReviewsModel.fromJson(rawRecipe);
    return review!;
  }
  Future<RecipeCreateReviewModel> fetchRecipeForCreateReview(int recipeId) async {
    var rawRecipe = await client.genericGetRequest<dynamic>('/recipes/create-review/$recipeId');
    return RecipeCreateReviewModel.fromJson(rawRecipe);
  }
  Future<List<TrendingRecipesModel>>fetchTrendingRecipes()async{
    var rawRecipes = await client.genericGetRequest<List<dynamic>>('/recipes/trending-recipes');
    trendingRecipes = rawRecipes.map((recipes) => TrendingRecipesModel.fromJson(recipes)).toList();
    return trendingRecipes;
  }
  Future<List<CommunityModel>>fetchCommunity(int limit, {required String order, bool descending = true}) async{
    var rawCommunity = await client.fetchCommunity(limit, order, descending);
    community = rawCommunity.map((community)=>CommunityModel.fromJson(community)).toList();
    return community;
  }

}