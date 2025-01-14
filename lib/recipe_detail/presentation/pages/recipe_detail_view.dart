import 'package:flutter/material.dart';
import 'package:recipe_app/core/core.dart';

import '../widgets/recipe_detail_chef_info.dart';
import '../widgets/recipe_detail_details_section.dart';
import '../widgets/recipe_detail_image_and_info.dart';
import '../widgets/recipe_detail_ingredients_section.dart';
import '../widgets/recipe_detail_instructions_section.dart';
import 'recipe_detail_view_model.dart';

class RecipeDetailView extends StatelessWidget {
  const RecipeDetailView({
    super.key,
    required this.viewModel,
  });

  final RecipeDetailViewModel viewModel;

  @override
  Widget build(BuildContext context) {
    return ListenableBuilder(
      listenable: viewModel,
      builder: (context, widget) => switch (viewModel.loading) {
        true => Center(child: CircularProgressIndicator()),
        false => Scaffold(
            extendBody: true,
            appBar: RecipeAppbarDetail(title: viewModel.recipe!.title),
            body: ListView(
              padding: EdgeInsets.fromLTRB(AppSizes.padding36, 20, AppSizes.padding36, 100),
              children: [
                RecipeDetailImageAndInfo(
                  image: viewModel.recipe!.image,
                  title: viewModel.recipe!.title,
                  reviews: 2273,
                  rating: 5,
                ),
                SizedBox(height: 26),
                RecipeDetailChefInfo(
                  user: viewModel.recipe!.user,
                ),
                SizedBox(height: 20),
                Container(height: 2, width: double.infinity, color: AppColors.pinkSub),
                SizedBox(height: 31),
                RecipeDetailDetailsSection(
                  timeRequired: viewModel.recipe!.timeRequired,
                  description: viewModel.recipe!.description,
                ),
                SizedBox(height: 31),
                RecipeDetailIngredientsSection(
                  ingredients: viewModel.recipe!.ingredients,
                ),
                SizedBox(height: 31),
                RecipeDetailInstructionsSection(
                  instructions: viewModel.recipe!.instructions,
                )
              ],
            ),
            bottomNavigationBar: RecipeBottomNavigationBar(),
          ),
      },
    );
  }
}
