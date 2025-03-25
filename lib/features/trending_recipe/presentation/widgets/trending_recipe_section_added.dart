import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recipe_app/core/core.dart';
import 'package:recipe_app/features/trending_recipe/presentation/manager/trending_recipe_bloc.dart';
import 'package:recipe_app/features/trending_recipe/presentation/manager/trending_recipe_state.dart';
import 'package:recipe_app/features/trending_recipe/presentation/widgets/trending_recipe_section_added_image_title.dart';

class TrendingRecipeSectionAdded extends StatelessWidget {
  const TrendingRecipeSectionAdded({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TrendingRecipeBloc, TrendingRecipeState>
      (builder: (context, state) {
        if (state.trendingRecipesStatus == TrendingRecipesStatus.loading) {
          return Center(child: CircularProgressIndicator());
        }else if (state.trendingRecipesStatus == TrendingRecipesStatus.idle) {
        }
      return Column(
        spacing: 20,
        children: [
          Align(
            alignment: Alignment.centerRight,
            child: Text("See All",
              style: TextStyle(
                  color: AppColors.redPinkMain,
                  fontWeight: FontWeight.w500,
                  fontSize: 12,
                  fontFamily: 'Poppins'
              ),),
          ),
          for(var trending in state.trendingRecipes!)TrendingRecipeSectionAddedImageTitle(
            image: trending.image,
            title: trending.title,
            desc: trending.desc,
            username: 'By Chef Josh Ryan',
            duration: trending.timeRequired,
            rating: trending.rating,),
        ],
      );
    }
    );
  }
}
