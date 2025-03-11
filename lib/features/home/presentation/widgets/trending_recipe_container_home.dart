import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'package:recipe_app/core/core.dart';
import 'package:recipe_app/features/categories_detail/data/models/categories_detail_model.dart';
import 'package:recipe_app/features/categories_detail/presentation/widgets/recipe_icon_button_container.dart';
import 'package:recipe_app/features/home/presentation/manager/home_view_model.dart';

class TrendingRecipeContainerHome extends StatelessWidget {
  const TrendingRecipeContainerHome({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    var vm = context.watch<HomeViewModel>();
    return Container(
      width: 430.w,
      height: 255.h,
      padding: EdgeInsets.symmetric(horizontal: 30,vertical: 14),
      decoration: BoxDecoration(
          color: AppColors.redPinkMain,
          borderRadius: BorderRadius.circular(20)
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text('Your Recipes',
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w500,
                fontSize: 15
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
               YourRecipesItem(  rating: vm.yourRecipes[0].rating, time: vm.yourRecipes[0].time,  image: vm.yourRecipes[0].image, title: vm.yourRecipes[0].title,),
               YourRecipesItem( rating: vm.yourRecipes[1].rating,time: vm.yourRecipes[1].time, image: vm.yourRecipes[1].image, title: vm.yourRecipes[1].title,),
            ],
          ),
        ],
      ),
    );
  }
}

class YourRecipesItem extends StatelessWidget {
  const YourRecipesItem({
    super.key, required this.rating, required this.time, required this.image, required this.title,
  });
  final String image, title;
  final int  time;
  final num rating;


  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Image.network(image,
            width: 169.w,
            height: 162.h,
          ),
        ),
        Positioned(
          bottom: -10,
          child: Container(
            width: 169.w,
            height: 48.h,
            padding: EdgeInsets.symmetric(horizontal: 15,vertical: 2),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(13)
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title,
                  style:
                  TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.w400
                  ),),
                Row(
                  children: [
                    RecipeRating(rating: rating),
                    SizedBox(width: 20,),
                    RecipeTime(time: time)
                  ],)
              ],
            ),
          ),
        ),
        Positioned(
            top: 7,
            right: 9,
            child:
            RecipeIconButtonContainer(image: 'assets/svg/heart.svg',
              callback: (){},
              iconWidth: 14,
              iconHeight: 15,
              containerColor: AppColors.redPinkMain,
              iconColor: Colors.white,
            ))
      ],
    );
  }
}
