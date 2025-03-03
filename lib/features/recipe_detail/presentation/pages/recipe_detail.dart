import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:recipe_app/core/core.dart';
import 'package:recipe_app/features/categories_detail/presentation/widgets/recipe_icon_button_container.dart';
import 'package:recipe_app/features/recipe_detail/presentation/manager/recipe_detail_viewmodel.dart';
import 'package:recipe_app/features/recipe_detail/presentation/pages/recipe_detail_title.dart';

import '../widgets/recipe_detail_video.dart';

class RecipeDetailImageInfo extends StatelessWidget {
  const RecipeDetailImageInfo({
    super.key,

  });



  @override
  Widget build(BuildContext context) {
    final recipe = context.select((RecipeDetailViewmodel vm) => vm.recipe);
    return Center(
      child: SizedBox(
        width: 357,
        height: 337,
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            RecipeDetailTitle(
              title: recipe.title,
            rating: 5,
            reviews: 2273,),
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.network(
                recipe.image,
                width: 357,
                height: 281,
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              top: 100,
              child: RecipeIconButtonContainer(image: 'assets/svg/play.svg',
              callback: ()=>Navigator.of(context).push(
                MaterialPageRoute(
                builder: (context)=>RecipeDetailVideo(
                  videoUrl: recipe.videoRecipe,),
              ),
              ),
                iconWidth: 30,
                iconHeight: 40,
                containerWidth: 74,
                containerHeight: 74,
                containerColor: AppColors.redPinkMain,
                iconColor: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
