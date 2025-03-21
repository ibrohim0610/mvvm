import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:recipe_app/core/core.dart';
import 'package:recipe_app/features/categories/presentation/widgets/recipe_appbar.dart';
import 'package:recipe_app/features/categories/presentation/widgets/recipe_bottom_navigationbar.dart';
import 'package:recipe_app/features/trending_recipe/presentation/pages/trending_recipe_most_viewed.dart';
import 'package:recipe_app/features/trending_recipe/presentation/pages/trending_recipe_section_added.dart';

class TrendingRecipeView extends StatelessWidget {
  const TrendingRecipeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      backgroundColor: AppColors.beigeColor,
      appBar: RecipeAppbar(title: 'Trending Recipes'),
      body: Column(
        children: [
          TrendingRecipeMostViewed(),
          SizedBox(
            height: 30,
          ),
          Expanded(
              child:
              ListView(
                padding: EdgeInsets.symmetric(horizontal: 36.w),
                children:[
              TrendingRecipeSectionAdded()
            ],
          ))
        ],
      ),
      bottomNavigationBar: RecipeBottomNavigationBar(),
    );
  }
}
