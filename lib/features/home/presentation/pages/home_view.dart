import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:recipe_app/core/core.dart';
import 'package:recipe_app/features/categories/presentation/widgets/recipe_bottom_navigationbar.dart';
import 'package:recipe_app/features/home/presentation/manager/home_view_model.dart';
import 'package:recipe_app/features/home/presentation/widgets/recently_added_section_home.dart';
import 'package:recipe_app/features/home/presentation/widgets/top_chef_section_home.dart';
import 'package:recipe_app/features/home/presentation/widgets/trending_recipe_container_home.dart';
import 'package:recipe_app/features/home/presentation/widgets/home_view_app_bar.dart';
import 'package:recipe_app/features/home/presentation/widgets/trending/trending_recipe_section.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<HomeViewModel>(
      create: (BuildContext context) =>
          HomeViewModel(
              catsRepo: context.read(),
              recipeRepo: context.read()
          ),
      child: Scaffold(
        extendBody: true,
        backgroundColor: AppColors.beigeColor,
        appBar: HomeViewAppBar(title: 'Hi Dianne', subtitle: "What are you cooking today",),
        body: ListView(
          children: [
            SizedBox(height: 16,),
            TrendingRecipeSection(),
            SizedBox(height: 16),
            TrendingRecipeContainerHome(),
            SizedBox(height: 16),
            TopChefSectionHome(),
            SizedBox(height: 16,),
            RecentlyAddedSectionHome()
          ],
        ),
        bottomNavigationBar: RecipeBottomNavigationBar(),
      ),
    );
  }
}
