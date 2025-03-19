import 'package:flutter/material.dart';
import 'package:recipe_app/core/core.dart';
import 'package:recipe_app/features/categories/presentation/widgets/recipe_appbar.dart';
import 'package:recipe_app/features/chefs/presentation/pages/top_chefs_section_viewed.dart';

class TopChefsView extends StatelessWidget {
  const TopChefsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.beigeColor,
      appBar: RecipeAppbar(title: 'Top chef'),
      body: ListView(
        children: [
          TopChefsSectionViewed()],
      ),
    );
  }
}
