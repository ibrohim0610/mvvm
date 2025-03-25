import 'package:equatable/equatable.dart';
import 'package:recipe_app/core/data/models/trending_recipe/trending_recipe_model.dart';
import 'package:recipe_app/core/data/models/trending_recipe/trending_recipes_model.dart';

enum TrendingRecipesStatus{idle, loading, error,success}

class TrendingRecipeState extends Equatable{
  final TrendingRecipeModel? trendingRecipe;
  final TrendingRecipesStatus recipeStatus;
  final TrendingRecipesStatus trendingRecipesStatus;
  final List<TrendingRecipesModel>? trendingRecipes;

  const TrendingRecipeState({
    required this.trendingRecipe,
    required this.recipeStatus,
    required this.trendingRecipes,
    required this.trendingRecipesStatus
});
  factory TrendingRecipeState.initial(){
    return TrendingRecipeState(
        trendingRecipe: null,
        recipeStatus: TrendingRecipesStatus.loading,
        trendingRecipes: [],
        trendingRecipesStatus: TrendingRecipesStatus.loading
    );
  }
  TrendingRecipeState copyWith({
    List<TrendingRecipesModel>? trendingRecipes,
    TrendingRecipeModel? trendingRecipe,
    TrendingRecipesStatus? recipeStatus,
    TrendingRecipesStatus? trendingRecipesStatus
}){
    return TrendingRecipeState(
        trendingRecipe: trendingRecipe ?? this.trendingRecipe,
        recipeStatus: recipeStatus ?? this.recipeStatus,
        trendingRecipes: trendingRecipes ?? this.trendingRecipes,
        trendingRecipesStatus: trendingRecipesStatus?? this.trendingRecipesStatus
    );
  }

  @override
  // TODO: implement props
  List<Object?> get props => [trendingRecipe, recipeStatus, trendingRecipes, trendingRecipesStatus];
}