import 'package:flutter/material.dart';
import 'package:recipe_app/core/core.dart';

class RecipeIngredientItem extends StatelessWidget {
  const RecipeIngredientItem({
    super.key,
    required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 4,
            height: 4,
            decoration: BoxDecoration(
              color: AppColors.redPinkMain,
              borderRadius: BorderRadius.circular(2),
            ),
          ),
          SizedBox(width: 6),
          SizedBox(
            width: 357 * AppSizes.wRatio,
            child: Text(
              text,
              style: TextStyle(
                fontSize: 12,
                height: 1.5,
              ),
            ),
          ),
        ],
      ),
    );
  }
}