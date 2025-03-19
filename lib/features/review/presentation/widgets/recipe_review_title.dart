import "package:flutter/material.dart";
import "package:flutter_screenutil/flutter_screenutil.dart";
import "package:flutter_svg/flutter_svg.dart";
import "package:go_router/go_router.dart";
import "package:recipe_app/core/core.dart";
import "package:recipe_app/core/routing/routes.dart";
import 'package:recipe_app/features/review/presentation/widgets/recipe_review_user_image.dart';

class RecipeReviewTitle extends StatelessWidget {
  const RecipeReviewTitle({
    super.key,
  required this.title,
  required this.firstName,
  required this.lastName,
  });
  final String title, firstName,lastName;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 5,
      children: [
        Text(
          title,
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
        Row(
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
                  firstName,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                  ),
                ),
                Text(
                  lastName,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w300,
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          ],
        ),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            foregroundColor: AppColors.redPinkMain,
            backgroundColor: Colors.white,
          ),
          onPressed: ()=> context.go(Routes.createReview),
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
