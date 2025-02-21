import 'package:recipe_app/core/client.dart';

import '../models/my_profile_model.dart';
import '../models/my_profile_recipe_model.dart';

class MyProfileRepository{
  final ApiClient client;
  MyProfileRepository({
    required this.client
});
  MyProfileModel? myProfile;


  Future<MyProfileModel> fetchMyProfile() async{
    if(myProfile != null)return myProfile!;
    var rawMyProfile = await client.fetchMyProfile();
    myProfile = MyProfileModel.fromJson(rawMyProfile);
    return myProfile!;
  }
  List<MyProfileRecipeModel> recipe = [];
  Future<List<MyProfileRecipeModel>> fetchMyRecipe() async{
    if(recipe.isNotEmpty) return recipe;
    final rawRecipe = await client.fetchProfileRecipe();
    recipe = rawRecipe.map((data) => MyProfileRecipeModel.fromJson(data)).toList();
    return recipe;
  }
}