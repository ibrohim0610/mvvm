import 'package:flutter/material.dart';
import 'package:recipe_app/core/core.dart';
import 'package:recipe_app/features/chefs/presentation/pages/top_chef_profile_app_bar.dart';
import 'package:recipe_app/features/chefs/presentation/pages/top_chef_profile_divider.dart';
import 'package:recipe_app/features/chefs/presentation/pages/top_chef_profile_follow.dart';
import 'package:recipe_app/features/chefs/presentation/pages/top_chef_profile_image.dart';
import 'package:recipe_app/features/chefs/presentation/pages/top_chef_profile_section_recipes.dart';

class TopChefProfileView extends StatelessWidget {
  const TopChefProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.beigeColor,
      appBar: TopChefProfileAppBar(),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 36),
        children: [
          Column(
            spacing: 15,
            children: [
              TopChefProfileImage(),
              TopChefProfileFollow(),
              TopChefProfileDivider(),
              TopChefProfileSectionRecipes()
            ],
          )
        ],
      ),
    );
  }
}
