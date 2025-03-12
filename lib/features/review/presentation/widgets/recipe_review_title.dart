import "package:flutter/material.dart";
import "package:flutter_svg/flutter_svg.dart";
import "package:recipe_app/core/core.dart";
import 'package:recipe_app/features/review/presentation/widgets/recipe_review_user_image.dart';

class RecipeReviewTitle extends StatelessWidget {
  const RecipeReviewTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 5,
      children: [
        Text(
          'Chicken Burger',
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.w500, fontSize: 20),
        ),
        Row(
          spacing: 5,
          children: [
            SvgPicture.asset(
              'assets/svg/review_stars.svg',
              fit: BoxFit.cover,
            ),
            Text(
              "(456 Reviews)",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 11,
                  fontWeight: FontWeight.w400),
            ),
          ],
        ),
        RecipeReviewUserImage(),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            foregroundColor: AppColors.redPinkMain,
            backgroundColor: Colors.white,
          ),
          onPressed: () {},
          child: Center(
            child: Text(
              'Add Review',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
            ),
          ),
        ),
      ],
    );
  }
}
