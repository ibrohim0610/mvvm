import 'package:recipe_app/features/recipe_detail/data/models/ingredients_model.dart';
import 'package:recipe_app/features/recipe_detail/data/models/instructions_model.dart';
import 'package:recipe_app/features/recipe_detail/data/models/user_model.dart';

class RecipesModel{
  final int id, categoryId;

  final String title,desc,image,videoRecipe;

  final int timeRequired;
  final UserModel user;
  List<IngredientsModel> ingredient;
  List<Instructions> instruction;


  RecipesModel({
    required this.id,
    required this.categoryId,
    required this.title,
    required this.desc,
    required this.image,
    required this.videoRecipe,
    required this.timeRequired,
    required this.user,
    required this.ingredient,
    required this.instruction
  });
  factory RecipesModel.fromJson(Map<String,dynamic>json){
    var rawIngredients = json['ingredients'] as List<dynamic>;
    var rawInstructions = json['instructions'] as List<dynamic>;
    return RecipesModel(
      id: json['id'],
      categoryId: json['categoryId'],
      title: json['title'],
      desc: json['description'],
      image: json['photo'],
      videoRecipe: json['videoRecipe'],
      timeRequired: json['timeRequired'],
      user: UserModel.fromJson(json['user']),
      ingredient: rawIngredients.map((ingredient) => IngredientsModel.fromJson(ingredient)).toList(),
      instruction: rawInstructions.map((instruction) => Instructions.fromJson(instruction)).toList(),
    );
  }

}