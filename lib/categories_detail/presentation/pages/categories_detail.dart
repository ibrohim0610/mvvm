import 'package:flutter/material.dart';
import 'package:recipe_app/categories_detail/data/models/recipe_model_small.dart';
import 'package:recipe_app/categories_detail/presentation/pages/categories_detail_view_model.dart';
import 'package:recipe_app/core/core.dart';

import '../widgets/category_item.dart';

class CategoriesDetailView extends StatelessWidget {
  const CategoriesDetailView({
    super.key,
    required this.viewModel,
  });

  final CategoriesDetailViewModel viewModel;

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () => viewModel.loadRefresh(),
      child: ListenableBuilder(
        listenable: viewModel,
        builder: (context, _) => Scaffold(
          extendBody: true,
          appBar: RecipeAppbarCatDetail(
            title: viewModel.selected.title,
            categories: viewModel.categories,
            selected: viewModel.selected,
          ),
          body: CategoriesDetailBody(recipes: viewModel.recipes),
          bottomNavigationBar: RecipeBottomNavigationBar(),
        ),
      ),
    );
  }
}

class CategoriesDetailBody extends StatelessWidget {
  const CategoriesDetailBody({
    super.key,
    required this.recipes,
  });

  final List<RecipeModelSmall> recipes;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 169 / 230,
      ),
      itemCount: recipes.length,
      padding: EdgeInsets.fromLTRB(AppSizes.padding38, 10, AppSizes.padding38, 100),
      itemBuilder: (context, index) => RecipeItem(
        recipe: recipes[index],
      ),
    );
  }
}
