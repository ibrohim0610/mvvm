import 'package:flutter/material.dart';
import 'package:recipe_app/core/core.dart';
import 'package:recipe_app/features/home/presentation/widgets/trending/trending_recipe_desc_home.dart';
import 'package:recipe_app/features/home/presentation/widgets/trending/trending_recipe_title_home.dart';

class HomeTitlePage extends StatelessWidget {
  const HomeTitlePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        width: 348,
        height: 100,
        padding: EdgeInsets.symmetric(horizontal: 10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(14),
            border: Border.all(color: AppColors.pink)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            TrendingRecipeTitleHome(),
            TrendingRecipeDescHome()
          ],
        ),
      ),
    );
  }
}
