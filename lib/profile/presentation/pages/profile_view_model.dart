import 'package:flutter/cupertino.dart';
import 'package:recipe_app/profile/data/models/profile_model.dart';
import 'package:recipe_app/profile/data/models/profile_recipes_model.dart';
import 'package:recipe_app/profile/data/repositories/profile_repository.dart';

class ProfileViewModel extends ChangeNotifier {
  ProfileViewModel({
    required ProfileRepository repo,
  }) : _repo = repo {
    load();
  }

  final ProfileRepository _repo;

  ProfileModel? profile;
  late List<ProfileRecipesModel> recipes;

  bool loading = true;

  Future<void> load() async {
    loading = true;
    notifyListeners();

    profile = await _repo.fetchProfile();
    recipes = await _repo.fetchRecipes();
    loading = false;
    notifyListeners();
  }
}