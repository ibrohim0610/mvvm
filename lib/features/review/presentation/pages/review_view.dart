import "package:flutter/material.dart";
import "package:flutter_screenutil/flutter_screenutil.dart";
import "package:flutter_svg/flutter_svg.dart";
import "package:recipe_app/core/core.dart";
import 'package:recipe_app/features/review/presentation/widgets/recipe_review_comments.dart';
import 'package:recipe_app/features/review/presentation/widgets/recipe_review_title.dart';

class ReviewView extends StatelessWidget {
  const ReviewView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.beigeColor,
      appBar: AppBar(
        backgroundColor: AppColors.beigeColor,
        centerTitle: true,
        leading: Center(
          child: SvgPicture.asset(
            'assets/svg/arrow.svg',
          ),
        ),
        title: Text(
          'Reviews',
          style: TextStyle(
              color: AppColors.redPinkMain,
              fontSize: 20,
              fontWeight: FontWeight.w600),
        ),
      ),
      body: ListView(
        children: [
          Container(
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
                  child: Image.asset(
                    'assets/images/chicken_burger.png',
                    width: 162.w,
                    height: 163.h,
                    fit: BoxFit.cover,
                  ),
                ),
                RecipeReviewTitle()
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 36),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Comments',
                  style: TextStyle(
                      color: AppColors.redPinkMain,
                      fontWeight: FontWeight.w500,
                      fontSize: 15),
                ),
                SizedBox(height: 25,),
                RecipeReviewComments(image: 'assets/images/emily.png', userTitle: '@r_joshua', duration: '(15 Mins Ago)',),
                RecipeReviewComments(image: 'assets/images/andrew.png', userTitle: '@r_andrew', duration: '40 Mins Ago',),
                RecipeReviewComments(image: 'assets/images/jessica.png', userTitle: '@sweet_jessica', duration: '50 min'),
                SizedBox(height: 20,),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
