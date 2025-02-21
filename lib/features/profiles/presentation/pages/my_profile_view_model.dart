import 'package:flutter/cupertino.dart';
import '../../data/models/my_profile_model.dart';
import '../../data/models/my_profile_recipe_model.dart';
import '../../data/repositories/my_profile_repository.dart';

class MyProfileViewModel extends ChangeNotifier{
  MyProfileViewModel({
    required MyProfileRepository myProfileRepo}): _myProfileRepo = myProfileRepo{
      load();
}
bool loading = true;
  final  MyProfileRepository _myProfileRepo;
  MyProfileModel? myProfile;
  late List<MyProfileRecipeModel> recipe;

  Future load()async{
    loading = true;
    notifyListeners();

    myProfile = await _myProfileRepo.fetchMyProfile();
    recipe = await _myProfileRepo.fetchMyRecipe();
    loading =  false;
    notifyListeners();
  }
}