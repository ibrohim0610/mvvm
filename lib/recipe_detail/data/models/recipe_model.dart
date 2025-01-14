import 'ingredient_model.dart';
import 'instruction_model.dart';
import 'user_model_recipe_detail.dart';

class RecipeModel {
  final int id, categoryId;
  final String title, description, image, videoRecipe;
  final int timeRequired;

  final UserModelInRecipeDetail user;

  List<Ingredient> ingredients;
  List<Instruction> instructions;

  RecipeModel({
    required this.id,
    required this.categoryId,
    required this.title,
    required this.description,
    required this.image,
    required this.videoRecipe,
    required this.timeRequired,
    required this.user,
    required this.ingredients,
    required this.instructions,
  });

  factory RecipeModel.fromJson(Map<String, dynamic> json) {
    var rawIngredients = json['ingredients'] as List<dynamic>;
    var rawInstructions = json['instructions'] as List<dynamic>;
    return RecipeModel(
      id: json['id'],
      categoryId: json['categoryId'],
      title: json['title'],
      description: json['description'],
      image: json['photo'],
      videoRecipe: json['videoRecipe'] ?? "placeholder",
      timeRequired: json['timeRequired'],
      user: UserModelInRecipeDetail.fromJson(json['user']),
      ingredients: rawIngredients.map((ingredient) => Ingredient.fromJson(ingredient)).toList(),
      instructions: rawInstructions.map((instruction) => Instruction.fromJson(instruction)).toList(),
    );
  }
}
