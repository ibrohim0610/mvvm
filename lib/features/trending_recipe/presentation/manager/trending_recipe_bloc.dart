import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recipe_app/core/data/repositories/recipe_repository.dart';
import 'package:recipe_app/features/trending_recipe/presentation/manager/trending_recipe_state.dart';

part 'trending_recipe_event.dart';
class TrendingRecipeBloc extends Bloc<TrendingRecipeEvent, TrendingRecipeState>{
  TrendingRecipeBloc({required RecipeRepository trendingRepo}):
      _trendingRepo = trendingRepo, super(TrendingRecipeState.initial()){
    on<TrendingRecipeLoading>(_onLoad);
    add(TrendingRecipeLoading());
  }

  final RecipeRepository _trendingRepo;

  Future<void> _onLoad(TrendingRecipeLoading event, Emitter<TrendingRecipeState> emit)async{
    emit(
      state.copyWith(
        recipeStatus: TrendingRecipesStatus.loading,
      trendingRecipesStatus:  TrendingRecipesStatus.loading,
      )
    );
    final trendingRecipes = await _trendingRepo.fetchTrendingRecipes();
    emit(state.copyWith(trendingRecipes: trendingRecipes,trendingRecipesStatus: TrendingRecipesStatus.success));
    final trendingRecipe = await _trendingRepo.fetchTrendingRecipe();
    emit(state.copyWith(trendingRecipe: trendingRecipe,recipeStatus: TrendingRecipesStatus.success));
  }
}
