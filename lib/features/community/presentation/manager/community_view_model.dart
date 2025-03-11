import 'package:flutter/cupertino.dart';
import 'package:recipe_app/features/community/data/models/community_model.dart';
import 'package:recipe_app/features/community/data/repositories/community_repository.dart';
import 'package:recipe_app/core/data/repositories/recipe_repository.dart';

class CommunityViewModel extends ChangeNotifier{
  CommunityViewModel({

    required RecipeRepository communityRepo}):
        _communityRepo =communityRepo{
          load();
}
  final RecipeRepository _communityRepo;
  bool isLoading = true;




  late final List<CommunityModel> topCommunity;

  Future<void>load()async{
    isLoading = true;
    notifyListeners();
    topCommunity = await _communityRepo.fetchCommunity(order: 'rating',10, );
    isLoading= false;
    notifyListeners();
  }

}