import 'package:flutter/material.dart';
import 'package:recipe_app/core/core.dart';

import '../../data/models/user_model_recipe_detail.dart';

class RecipeDetailChefInfo extends StatelessWidget {
  const RecipeDetailChefInfo({
    super.key,
    required this.user,
  });

  final UserModelInRecipeDetail user;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(31),
              child: Image(
                image: AssetImage("assets/images/edward.png"),
                width: 62,
                height: 62,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(width: 15),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  user.username,
                  style: TextStyle(
                    fontSize: 12,
                    color: AppColors.redPinkMain,
                  ),
                ),
                Text(
                  user.fullName,
                  style: TextStyle(
                    fontFamily: 'League Spartan',
                    fontWeight: FontWeight.w300,
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          ],
        ),
        Row(
          children: [
            SizedBox(
              height: 21,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  foregroundColor: AppColors.pinkSub,
                  backgroundColor: AppColors.pink,
                  elevation: 0,
                  padding: EdgeInsets.symmetric(horizontal: 15),
                ),
                child: Text(
                  "Following",
                  style: TextStyle(
                    fontSize: 11,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            SizedBox(width: 9),
            RecipeSvgImage(
              image: "assets/icons/three_dots.svg",
              width: 4,
              height: 15,
            )
          ],
        ),
      ],
    );
  }
}
