
import 'package:recipe_app/core/core.dart';
import 'package:recipe_app/features/categories_detail/data/models/categories_detail_model.dart';
class CategoriesDetailRepositories {
  CategoriesDetailRepositories({required this.client});

  final ApiClient client;
  Map<int,List<CategoriesDetailModel>> recipesByCategory ={};

  Future<List<CategoriesDetailModel>> fetchRecipes(int categoryId) async {
    if(recipesByCategory.containsKey(categoryId)&& recipesByCategory[categoryId] != null){
      return recipesByCategory[categoryId]!;
    }
    var recipesRaw = await client.fetchRecipes(categoryId);
    final recipes = recipesRaw.map((recipe) => CategoriesDetailModel.fromJson(recipe)).toList();
    recipesByCategory[categoryId]=recipes;
    return recipes;
  }
}
