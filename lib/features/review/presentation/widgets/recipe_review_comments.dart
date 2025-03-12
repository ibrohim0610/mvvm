import "package:flutter/material.dart";
import "package:flutter_screenutil/flutter_screenutil.dart";
import "package:flutter_svg/flutter_svg.dart";
import "package:recipe_app/core/core.dart";

class RecipeReviewComments extends StatelessWidget {
  const RecipeReviewComments({
    super.key, required this.image, required this.userTitle, required this.duration,
  });
  final String image, userTitle, duration;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 15,
      children: [
        Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12.5),
              child: Image.asset(
                image,
                width: 35.w,
                height: 35.h,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              userTitle,
              style: TextStyle(
                  color: AppColors.redPinkMain,
                  fontSize: 15,
                  fontWeight: FontWeight.w400),
            ),
            SizedBox(width: 140),
            Text(
              duration,
              style: TextStyle(
                  color: AppColors.redPinkMain,
                  fontSize: 12,
                  fontWeight: FontWeight.w400),
            )
          ],
        ),
        Text(
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent fringilla eleifend purus vel dignissim. Praesent urna ante, iaculis at lobortis eu.',
          maxLines: 3,
          style: TextStyle(
              color: Colors.white,
              fontSize: 12,
              fontWeight: FontWeight.w300,
              fontFamily: 'Poppins'),
        ),
        SvgPicture.asset('assets/svg/stars_pink.svg'),
        SizedBox(height: 20,),
        Divider(
          color: AppColors.pinkSub,
        )
      ],

    );
  }
}
