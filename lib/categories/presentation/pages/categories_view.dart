import 'package:flutter/material.dart';
import 'package:recipe_app/categories/presentation/pages/categories_view_model.dart';
import 'package:recipe_app/core/core.dart';

import '../widgets/category_item.dart';

class CategoriesView extends StatelessWidget {
  const CategoriesView({
    super.key,
    required this.viewModel,
  });

  final CategoriesViewModel viewModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      appBar: RecipeAppbar(title: "Categories"),
      body: CategoriesPageBody(viewModel: viewModel),
      bottomNavigationBar: RecipeBottomNavigationBar(),
    );
  }
}

class CategoriesPageBody extends StatelessWidget {
  const CategoriesPageBody({
    super.key,
    required this.viewModel,
  });

  final CategoriesViewModel viewModel;

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: viewModel.load,
      child: ListenableBuilder(
        listenable: viewModel,
        builder: (context, _) {
          return ListView(
            padding: EdgeInsets.fromLTRB(38 * AppSizes.wRatio, 20, 38 * AppSizes.wRatio, 10),
            children: [
              if (viewModel.mainCategory != null)
                CategoryItem(
                  category: viewModel.mainCategory!,
                  width: 356,
                  height: 148,
                  main: true,
                ),
              SizedBox(height: 16),
              GridView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 10,
                ),
                itemCount: viewModel.categories.length,
                itemBuilder: (context, index) {
                  return CategoryItem(category: viewModel.categories[index]);
                },
              )
            ],
          );
        },
      ),
    );
  }
}
