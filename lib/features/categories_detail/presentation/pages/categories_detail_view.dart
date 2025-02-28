import 'package:flutter/material.dart';
import 'package:recipe_app/core/core.dart';
import 'package:recipe_app/features/categories/presentation/widgets/recipe_appbar.dart';
import 'package:recipe_app/features/categories_detail/presentation/manager/categories_detail_view_model.dart';

import '../../../categories/presentation/widgets/recipe_bottom_navigationbar.dart';
import '../../../profiles/presentation/widgets/profile_item.dart';


class CategoriesDetailView extends StatelessWidget {
  const CategoriesDetailView({super.key, required this.viewModel});

  final CategoriesDetailViewModel viewModel;
  @override
  Widget build(BuildContext context) {
    return ListenableBuilder(
        listenable: viewModel,
        builder: (context, _) => Scaffold(
          backgroundColor: AppColors.beigeColor,
              appBar: RecipeAppbarCatDetail(
                  title: viewModel.selected.title,
                  categories: viewModel.categories,
                  selected: viewModel.selected),
          body: GridView.builder(
            itemCount: viewModel.recipes.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
            itemBuilder: (context, index){
              return ProfileItem(
                id: viewModel.recipes[index].id,
                  image: viewModel.recipes[index].image,
                  title: viewModel.recipes[index].title,
                  desc: viewModel.recipes[index].desc,
                  rating: viewModel.recipes[index].categoryId,
                  duration: viewModel.recipes[index].time);
            }
          ),
          bottomNavigationBar: RecipeBottomNavigationBar(),
            )
    );
  }
}
