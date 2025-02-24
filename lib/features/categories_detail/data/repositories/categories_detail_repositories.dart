import 'package:recipe_app/core/client.dart';
import 'package:recipe_app/features/categories_detail/data/models/categories_detail_model.dart';

class CategoriesDetailRepositories{
  CategoriesDetailRepositories({
    required this.client
});
  final ApiClient client;
  List<CategoriesDetailModel> recipes =  [];

  Future<List<CategoriesDetailModel>> fetchRecipes(int categoryId)async{
    List<dynamic> rawRecipes = await client.fetchRecipes(categoryId);
    recipes = rawRecipes.map((recipe) => CategoriesDetailModel.fromJson(recipe)).toList();
    return recipes;
  }
}