
import 'package:recipe_app/core/client.dart';

import '../models/profile_model.dart';
import '../models/profile_recipes_model.dart';


class ProfileRepository{
  final ApiClient client;
  ProfileRepository({required this.client});

  ProfileModel? profile ;

  Future<ProfileModel?> fetchProfile() async{
    if(profile != null) return profile;
    var rawProfile = await client.fetchProfile();
    profile = ProfileModel.fromJson(rawProfile);
    return profile;
  }
  List<ProfileRecipesModel> recipes = [];

  Future<List<ProfileRecipesModel>> fetchRecipes() async{
    if(recipes.isNotEmpty) return recipes;
    final rawRecipes = await client.fetchProfileRecipes();
    recipes = rawRecipes.map((data) => ProfileRecipesModel.fromJson(data)).toList();
    return recipes;
  }
}