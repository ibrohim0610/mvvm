import "package:flutter/material.dart";
import "package:flutter_screenutil/flutter_screenutil.dart";
import "package:recipe_app/core/core.dart";
import "package:recipe_app/core/data/models/recipe_reviews_model.dart";
import 'package:recipe_app/features/review/presentation/widgets/recipe_review_title.dart';

class ReviewRecipe extends StatelessWidget {
  const ReviewRecipe({
    super.key,
    required this.recipe
  });
  final ReviewsModel recipe;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
      width: 430.w,
      height: 223.h,
      decoration: BoxDecoration(
          color: AppColors.redPinkMain,
          borderRadius: BorderRadius.circular(20)),
      child: Row(
        spacing: 15,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(14),
            child: Image.network(
              recipe.photo,
              width: 162.w,
              height: 163.h,
              fit: BoxFit.cover,
            ),
          ),
          RecipeReviewTitle(
            title: recipe.title,
            firstName: recipe.user.firstName,
          lastName: recipe.user.lastName,)
        ],
      ),
    );
  }
}
