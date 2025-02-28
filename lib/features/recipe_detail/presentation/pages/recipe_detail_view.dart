import 'package:recipe_app/features/recipe_detail/presentation/pages/recipe_detail_intuctions_section.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:recipe_app/features/recipe_detail/presentation/manager/recipe_detail_viewmodel.dart';
import 'package:recipe_app/features/recipe_detail/presentation/pages/recipe_detail.dart';
import 'package:recipe_app/features/recipe_detail/presentation/pages/recipe_detail_app_bar.dart';
import 'package:recipe_app/features/recipe_detail/presentation/pages/recipe_detail_chef_info.dart';
import 'package:recipe_app/features/recipe_detail/presentation/pages/recipe_detail_details_section.dart';
import 'package:recipe_app/features/recipe_detail/presentation/pages/recipe_detail_ingredients_section.dart';

import '../../../../core/routing/routes.dart';
import '../../../../core/utils/colors.dart';
import '../../../categories/presentation/widgets/recipe_bottom_navigationbar.dart';

class RecipeDetailView extends StatelessWidget {
  const RecipeDetailView({super.key});

  @override
  Widget build(BuildContext context) {
    final vm = context.watch<RecipeDetailViewmodel>();
    if(vm.isLoading){
      return Center(child: CircularProgressIndicator());
    }else {
      return Scaffold(
          extendBody: true,
          backgroundColor: AppColors.beigeColor,
          appBar: RecipeDetailAppBar(
            callback: () => context.go(Routes.categoriesDetail),
            title: vm.recipe.title,
          ),
          body: ListView(
            padding: EdgeInsets.only(top:100,right: 36, left: 36,bottom: 20),
            children: [
              RecipeDetailImageInfo(),
              SizedBox(
                height: 26,
              ),
              RecipeDetailChefInfo(
                user: vm.recipe.user,
              ),
              SizedBox(
                 height: 20,
               ),
              Container(
                width: double.infinity,
                height: 2,
                color: AppColors.pinkSub,
              ),
              SizedBox(
                height: 31,
              ),
              RecipeDetailDetailsSection(
                desc: vm.recipe.desc,
                timeRequired: vm.recipe.timeRequired,
              ),
              SizedBox(
                height: 31,
              ),
              RecipeDetailIngredientsSection(ingredients: vm.recipe.ingredient,),
              SizedBox(height: 31,),
              RecipeDetailInstructionsSection(instruction:  vm.recipe.instruction,)
            ],
          ),
        bottomNavigationBar: RecipeBottomNavigationBar(),
      );
    }
  }
}

