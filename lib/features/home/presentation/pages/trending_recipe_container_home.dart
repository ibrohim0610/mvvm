import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:recipe_app/core/core.dart';

class TrendingRecipeContainerHome extends StatelessWidget {
  const TrendingRecipeContainerHome({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    return Container(
      width: 430,
      height: 255,
      padding: EdgeInsets.symmetric(horizontal: 36,vertical: 14),
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
              YourRecipesItem(image: 'assets/images/chicken_burger.png', title: "Chicken Burger", rating: 5, time: 15),
              YourRecipesItem(image: 'assets/images/tiramisu.png', title: "Tiramisu", rating: 5, time: 15),
            ],
          ),
        ],
      ),
    );
  }
}

class YourRecipesItem extends StatelessWidget {
  const YourRecipesItem({
    super.key, required this.image, required this.title, required this.rating, required this.time,
  });
  final String image, title;
  final int rating, time;

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Image.asset(image,
          width: 169,
          height: 162,
          ),
        ),
        Positioned(
          bottom: -10,
          child: Container(
            width: 169,
            height: 48,
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
        )
      ],
    );
  }
}
