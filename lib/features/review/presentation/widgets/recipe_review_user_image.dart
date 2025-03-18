import "package:flutter/material.dart";
import "package:flutter_screenutil/flutter_screenutil.dart";
import 'package:recipe_app/features/review/presentation/widgets/recipe_review_user_title_item.dart';

class RecipeReviewUserImage extends StatelessWidget {
  const RecipeReviewUserImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 5,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(16.5),
          child: Image.asset(
            'assets/images/andrew.png',
            width: 33.w,
            height: 33.h,
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "@Andrew-Mar",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w400,
                fontSize: 14,
              ),
            ),
            Text(
              "Andrew Martinez-Chef",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w300,
                fontSize: 14,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
