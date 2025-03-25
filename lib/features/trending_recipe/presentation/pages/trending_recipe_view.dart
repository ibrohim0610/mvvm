import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:recipe_app/core/core.dart';
import 'package:recipe_app/features/categories/presentation/widgets/recipe_appbar.dart';
import 'package:recipe_app/features/categories/presentation/widgets/recipe_bottom_navigationbar.dart';
import 'package:recipe_app/features/trending_recipe/presentation/manager/trending_recipe_bloc.dart';
import 'package:recipe_app/features/trending_recipe/presentation/manager/trending_recipe_state.dart';
import 'package:recipe_app/features/trending_recipe/presentation/widgets/trending_recipe_most_viewed.dart';
import 'package:recipe_app/features/trending_recipe/presentation/widgets/trending_recipe_section_added.dart';

import '../../../../core/data/models/trending_recipe/trending_recipe_model.dart';

class TrendingRecipeView extends StatelessWidget {
  const TrendingRecipeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      backgroundColor: AppColors.beigeColor,
      appBar: RecipeAppbar(title: 'Trending Recipes'),
      body: BlocBuilder<TrendingRecipeBloc, TrendingRecipeState>(
        builder: (context, state) {
          final TrendingRecipeModel? recipeModel = state.trendingRecipe;

          if (state.recipeStatus == TrendingRecipesStatus.loading) {
            return Center(child: CircularProgressIndicator());
          }else if (state.recipeStatus == TrendingRecipesStatus.idle) {
          }
          return Column(
            children: [
              TrendingRecipeMostViewed(
                title: recipeModel!.title,
              timeRequired: recipeModel.timeRequired,
                rating: recipeModel.rating,
                desc: recipeModel.desc,
                photo: recipeModel.photo,
              ),
              SizedBox(
                height: 30,
              ),
              Expanded(
                  child:
                  ListView(
                    padding: EdgeInsets.symmetric(horizontal: 36.w),
                    children: [
                      TrendingRecipeSectionAdded()
                    ],
                  ))
            ],
          );
        }
      ),
      bottomNavigationBar: RecipeBottomNavigationBar(),
    );
  }
}
