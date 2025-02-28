import 'package:flutter/material.dart';

import 'package:recipe_app/core/core.dart';
import 'package:recipe_app/features/recipe_detail/data/models/ingredients_model.dart';

import '../widgets/recipe_detail_Ingredients_item.dart';



class RecipeDetailIngredientsSection extends StatelessWidget {
  const RecipeDetailIngredientsSection({
    super.key,
    required this.ingredients,
  });

  final List<IngredientsModel> ingredients;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Ingredients",
          style: TextStyles.recipeSectionTitle,
        ),
        SizedBox(height: 24),
        for (var item in ingredients) RecipeIngredientItem(text: "${item.amount} ${item.name}")
      ],
    );
  }
}