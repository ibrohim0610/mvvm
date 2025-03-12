import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:recipe_app/core/core.dart';
import '../../../../core/routing/routes.dart';
import '../manager/categories_cubit.dart';
import '../widgets/category_item.dart';
import '../widgets/main_categories_item.dart';
import '../widgets/recipe_appbar.dart';
import '../widgets/recipe_bottom_navigationbar.dart';

class CategoriesView extends StatelessWidget {
  const CategoriesView({super.key });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.beigeColor,
      extendBody: true,
      appBar: RecipeAppbar(title: "Categories"),
      body: CategoriesPageBody(),
      bottomNavigationBar: RecipeBottomNavigationBar(),
    );
  }
}
class CategoriesPageBody extends StatelessWidget {
  const CategoriesPageBody({super.key, });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CategoriesBloc, CategoriesState>(
        builder: (context, state)=>RefreshIndicator(
          onRefresh:() async => context.read<CategoriesBloc>().add(CategoriesLoading()),
          child: ListView(
            children: [
              if(state.mainCategory != null)
                CategoryItem(
                  callback: ()=>context.go(Routes.categoriesDetail),
                  image: state.mainCategory!.image,
                  title: state.mainCategory!.title,),
              SizedBox(height: 16,),
              GridView.builder(physics: NeverScrollableScrollPhysics(),
                padding: EdgeInsets.zero,
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 10
                ),
                itemCount: state.categories.length,
                itemBuilder: (context,index){
                  return MainCategoriesItem(
                    callback: ()=>context.go(Routes.categoriesDetail,extra:state.categories[index]),
                    image: state.categories[index].image,
                    title: state.categories[index].title,);
                },
              )
            ],
          ),
        ),
        );
  }
}
