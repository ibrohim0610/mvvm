import 'package:flutter/material.dart';
import 'package:recipe_app/core/core.dart';
import 'package:recipe_app/features/home/presentation/widgets/trending/home_tranding_recipe.dart';

class TrendingRecipeSection extends StatelessWidget {
  const TrendingRecipeSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 36.0),
        child: Column(
          spacing: 10,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Trending Recipe",
              style: TextStyle(
                  color: AppColors.redPinkMain,
                  fontSize: 15,
                  fontWeight: FontWeight.w500),
            ),
            HomeTrendingRecipe(),
          ],
        ),
      ),
    );
  }
}
