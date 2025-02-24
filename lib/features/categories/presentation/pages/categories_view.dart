import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:recipe_app/core/core.dart';
import '../../../../core/routing/routes.dart';
import '../manager/categories_view_model.dart';
import '../widgets/category_item.dart';
import '../widgets/main_categories_item.dart';
import '../widgets/recipe_appbar.dart';
import '../widgets/recipe_bottom_navigationbar.dart';

class CategoriesView extends StatelessWidget {
  const CategoriesView({super.key, required this.viewModel});
final CategoriesViewModel viewModel;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.beigeColor,
      extendBody: true,
      appBar: RecipeAppbar(title: "Categories"),
      body: CategoriesPageBody(viewModel: viewModel),
      bottomNavigationBar: RecipeBottomNavigationBar(),
    );
  }
}
class CategoriesPageBody extends StatelessWidget {
  const CategoriesPageBody({super.key, required this.viewModel});

  final CategoriesViewModel viewModel;
  @override
  Widget build(BuildContext context) {
    return ListenableBuilder(
        listenable: viewModel,
        builder: (context,  index){
      return ListView(
        children: [
          if(viewModel.mainCategory != null)
            GestureDetector(
              onTap: () {
                context.push(Routes.categoriesDetail, extra: viewModel.mainCategory);
              },
              child: CategoryItem(
                  image: viewModel.mainCategory!.image,
                title: viewModel.mainCategory!.title,),
            ),
          SizedBox(height: 16,),
          GridView.builder(physics: NeverScrollableScrollPhysics(),
            padding: EdgeInsets.zero,
          shrinkWrap: true,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
          mainAxisSpacing: 10
          ),
            itemCount: viewModel.categories.length,
            itemBuilder: (context,index){
            return MainCategoriesItem(
              image: viewModel.categories[index].image,
              title: viewModel.categories[index].title,);
            },
          )
        ],
      );
    });
  }
}
