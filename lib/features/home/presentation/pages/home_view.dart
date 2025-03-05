import 'package:flutter/material.dart';
import 'package:recipe_app/core/core.dart';
import 'package:recipe_app/features/home/presentation/pages/recently_added_section_home.dart';
import 'package:recipe_app/features/home/presentation/pages/top_chef_section_home.dart';
import 'package:recipe_app/features/home/presentation/pages/trending_recipe_container_home.dart';
import 'package:recipe_app/features/home/presentation/widgets/home_view_app_bar.dart';
import 'package:recipe_app/features/home/presentation/widgets/trending/trending_recipe_section.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.beigeColor,
      appBar: HomeViewAppBar(),
      body: ListView(
        children: [
          SizedBox(
            height: 16,
          ),
          TrendingRecipeSection(),
          SizedBox(height: 16),
          TrendingRecipeContainerHome(),
          SizedBox(height: 16),
          TopChefSectionHome(),
          SizedBox(height: 16,),
          RecentlyAddedSectionHome()
        ],
      ),
    );
  }
}
