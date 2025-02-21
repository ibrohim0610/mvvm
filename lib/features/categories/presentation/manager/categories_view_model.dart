import 'package:flutter/cupertino.dart';
import '../../data/models/categories_model.dart';
import '../../data/repositories/categories_repository.dart';

class CategoriesViewModel extends ChangeNotifier{
  CategoriesViewModel({required CategoriesRepository repo}): _repo = repo{
    load();
}

  final CategoriesRepository _repo;

  List<CategoryModel> categories = [];
  CategoryModel? mainCategory;

  Future<void> load()async{
    var rawCategories = await _repo.fetchCategories();
    categories = rawCategories.where((data)=> data.id != mainCategory?.id).toList();
    mainCategory = rawCategories.where((data) => data.main).firstOrNull;
    notifyListeners();
  }
}