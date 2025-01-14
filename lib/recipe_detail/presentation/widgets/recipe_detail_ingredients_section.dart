import 'package:flutter/material.dart';

import 'package:recipe_app/core/core.dart';

import '../../data/models/ingredient_model.dart';
import 'recipe_detail_ingredient_item.dart';

class RecipeDetailIngredientsSection extends StatelessWidget {
  const RecipeDetailIngredientsSection({
    super.key,
    required this.ingredients,
  });

  final List<Ingredient> ingredients;

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