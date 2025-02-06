import 'package:flutter/cupertino.dart';
import 'package:mvvm/categories/data/models/category_model.dart';
import 'package:mvvm/categories/data/repositories/categories_repository.dart';
import 'package:mvvm/category_detail/data/models/recipe_model_small.dart';
import 'package:mvvm/category_detail/data/repositories/category_detail_repository.dart';

class CategoryDetailViewModel extends ChangeNotifier{

  CategoryDetailViewModel({ required CategoriesRepository catsRepo,
    required this.selected,
  required CategoryDetailRepository repo
  }):_catsRepo = catsRepo, _repo = repo{
    load();
}


  final CategoriesRepository _catsRepo;
  final CategoryDetailRepository _repo;


  List<CategoryModel> categories = [];

  List<RecipeModelSmall> recipes = [];

  final CategoryModel selected;

  Future<void >load()async{
    categories = await _catsRepo.fetchCategories();
    recipes = await _repo.fetchRecipes(selected.id);
    notifyListeners();
  }

}