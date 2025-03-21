import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:recipe_app/core/core.dart';
import 'package:recipe_app/core/presentation/widgets/recipe_text_button_container.dart';

class TopChefProfileImage extends StatelessWidget {
  const TopChefProfileImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 20,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(51),
          child: Image.asset(
            'assets/images/neil.png',
            width: 102.w,
            height: 97.h,
            fit: BoxFit.cover,
          ),
        ),
        Column(
          spacing: 7,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Neil Tran-Chef",
              style: TextStyle(
                color: AppColors.redPinkMain,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w500,
                fontSize: 15,
              ),
            ),
            Text(
              "Passionate chef in creative and \ncontemporary cuisine.",
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w300,
                fontSize: 12,
              ),
            ),
            RecipeTextButtonContainer(
                text: 'Following',
                textColor: AppColors.pinkSub,
                fontWeight: FontWeight.w500,
                fontSize: 9,
                containerColor: AppColors.pink,
                containerWidth: 81.w,
                containerHeight: 19.h,
                callback: () {})
          ],
        )
      ],
    );
  }
}
