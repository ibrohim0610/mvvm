import 'package:flutter/material.dart';
import 'package:recipe_app/categories/presentation/manager/categories_view_model.dart';
import 'package:recipe_app/categories/presentation/widgets/main_categories_item.dart';
import 'package:recipe_app/core/core.dart';
import 'package:recipe_app/categories/presentation/widgets/category_item.dart';
import 'package:recipe_app/core/sizes.dart';

class CategoriesView extends StatelessWidget {
  const CategoriesView({super.key, required this.viewModel});
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
            CategoryItem(
                image: viewModel.mainCategory!.image,
              title: viewModel.mainCategory!.title,),
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
