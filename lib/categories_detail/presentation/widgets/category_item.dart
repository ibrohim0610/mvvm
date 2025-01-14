import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:recipe_app/categories_detail/data/models/recipe_model_small.dart';
import 'package:recipe_app/core/core.dart';

class RecipeItem extends StatelessWidget {
  const RecipeItem({
    super.key,
    required this.recipe,
  });

  final RecipeModelSmall recipe;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => context.go('/categories/detail/recipe', extra: recipe),
      child: Center(
        child: SizedBox(
          width: 169 * AppSizes.wRatio,
          height: 230 * AppSizes.hRatio,
          child: Stack(
            alignment: Alignment.topCenter,
            children: [
              _RecipeItemInfo(recipe: recipe),
              _RecipeItemImage(image: recipe.image),
            ],
          ),
        ),
      ),
    );
  }
}

class _RecipeItemInfo extends StatelessWidget {
  const _RecipeItemInfo({
    super.key,
    required this.recipe,
  });

  final RecipeModelSmall recipe;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      child: Container(
        width: 158.5 * AppSizes.wRatio,
        height: 80 * AppSizes.hRatio,
        padding: EdgeInsets.fromLTRB(10, 7, 10, 3),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(14),
          ),
          border: Border.all(color: AppColors.pinkSub, width: 1),
          color: Colors.white,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              recipe.title,
              maxLines: 1,
              style: TextStyles.recipeItemTitle,
            ),
            Text(
              recipe.desc,
              maxLines: 2,
              style: TextStyles.recipeItemDescription,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                RecipeRating(rating: 5),
                RecipeTime(time: recipe.time),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class _RecipeItemImage extends StatelessWidget {
  const _RecipeItemImage({
    super.key,
    required this.image,
  });

  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.25),
            offset: Offset(0, 4),
            blurRadius: 4,
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(14),
        child: Image(
          image: CachedNetworkImageProvider(image),
          width: 169 * AppSizes.wRatio,
          height: 153 * AppSizes.hRatio,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
