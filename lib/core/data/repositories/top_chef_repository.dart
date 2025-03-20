import 'package:recipe_app/core/client.dart';
import 'package:recipe_app/core/data/models/top_chef_model.dart';
import '../models/top_chef_model_small.dart';

class ChefRepository{

  final ApiClient client;
  List<TopChefModelSmall> chefs= [];
  List<TopChefModel>mostViewedChefs = [];
  List<TopChefModel>mostLikedChefs = [];
  List<TopChefModel>newChefs = [];


  ChefRepository({
    required this.client,
});
  Future<List<TopChefModelSmall>> fetchTopChefs(int limit) async {
    if (chefs.isNotEmpty) return chefs;
    var rawChefs = await client.fetchTopChefs(limit);
    chefs = rawChefs.map((chef) => TopChefModelSmall.fromJson(chef)).toList();
    return chefs;
  }
  Future<List<TopChefModel>> fetchMostViewedChefs()async{
    var rawMostViewedChefs = await client.genericGetRequest<List<dynamic>>(
      '/top-chefs/list',
      queryParams: {"Order": "Date", "Limit":2, "Descending": false}
    );
    mostViewedChefs = rawMostViewedChefs.map((chef)=> TopChefModel.fromJson(chef)).toList();
    return mostViewedChefs;
  }
  Future<List<TopChefModel>> fetchMostLikedChefs()async{
    var rawMostLikedChefs = await client.genericGetRequest<List<dynamic>>(
      '/top-chefs/list',
      queryParams: {"Limit":2},
    );
    mostLikedChefs = rawMostLikedChefs.map((chef)=> TopChefModel.fromJson(chef)).toList();
    return mostLikedChefs;
  }
  Future<List<TopChefModel>> fetchNewChef()async{
    var rawNewChefs = await client.genericGetRequest<List<dynamic>>(
      '/top-chefs/list',
      queryParams: {"Order": "Date", "Limit":2}
    );
    newChefs = rawNewChefs.map((chef)=> TopChefModel.fromJson(chef)).toList();
    return newChefs;
  }

}