import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:recipe_app/core/core.dart';
import 'package:recipe_app/features/review/presentation/widgets/add_review_elevated_buttons.dart';
import 'package:recipe_app/features/review/presentation/widgets/add_review_radio_button.dart';
import 'package:recipe_app/features/review/presentation/widgets/recipe_review_app_bar.dart';
import 'package:recipe_app/features/review/presentation/widgets/review_add_photo.dart';

class AddReview extends StatelessWidget {
  const AddReview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.beigeColor,
      appBar: RecipeReviewAppBar(title: "Leave A Review"),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 36.w, vertical: 10.h),
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: 356.w,
                height: 262.h,
                child: Stack(alignment: Alignment.topCenter, children: [
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      width: 356.w,
                      height: 70.h,
                      decoration: BoxDecoration(
                          color: AppColors.redPinkMain,
                          borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(14),
                              bottomLeft: Radius.circular(14))),
                      child: Center(
                        child: Text(
                          "Chicken Burger",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                              fontFamily: 'Poppins'),
                        ),
                      ),
                    ),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      'assets/images/chicken_burger.png',
                      width: 356.w,
                      height: 206.h,
                      fit: BoxFit.cover,
                    ),
                  )
                ]),
              ),
              SizedBox(
                height: 20,
              ),
              Center(
                child: SvgPicture.asset(
                  'assets/svg/review_stars.svg',
                  width: 193,
                  height: 29,
                  fit: BoxFit.cover,
                  color: AppColors.redPinkMain,
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Center(
                child: Text(
                  'Your overall rating',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                      fontFamily: 'Poppins'),
                ),
              ),
              SizedBox(
                height: 35,
              ),
              TextField(
                maxLines: 5,
                minLines: 5,
                style: TextStyle(color: AppColors.beigeColor),
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                    filled: true,
                    fillColor: AppColors.pink,
                    hintText: 'Leave us Review!',
                    hintStyle: TextStyle(
                      color: AppColors.beigeColor.withValues(alpha: 0.5),
                    ),
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(14),
                    )),
              ),
              SizedBox(
                height: 10,
              ),
              ReviewAddPhoto(),
              SizedBox(
                height: 25,
              ),
              Text(
                "Do you recommend this recipe?",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                    fontFamily: 'Poppins'),
              ),
              AddReviewRadioButton(),
              AddReviewElevatedButtons()
            ],
          )
        ],
      ),
    );
  }
}
