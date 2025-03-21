import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:recipe_app/core/core.dart';

class TrendingRecipeMostViewed extends StatelessWidget {
  const TrendingRecipeMostViewed({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 9.h, left: 36.w, right: 36.w, bottom: 18.h),
      width: 430.w,
      height: 241.h,
      decoration: BoxDecoration(
          color: AppColors.redPinkMain,
          borderRadius: BorderRadius.circular(20)),
      child: Column(
        spacing: 10,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Most Viewed Today",
            style: TextStyle(
                color: Colors.white,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w500,
                fontSize: 15),
          ),
          SizedBox(
            width: 358.w,
            height: 182.h,
            child: Stack(
              alignment: Alignment.topCenter,
              children: [
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    padding:
                        EdgeInsets.only(top: 10.h, left: 15.w, right: 15.w),
                    width: 348.w,
                    height: 49.h,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(14),
                            bottomRight: Radius.circular(14)
                        )
                    ),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Salami and cheese pizza",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 13,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: 'Poppins'),
                            ),
                            Row(
                              spacing: 5,
                              children: [
                                SvgPicture.asset('assets/svg/clock.svg'),
                                Text(
                                  '30min',
                                  style: TextStyle(
                                    color: AppColors.pinkSub,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12,
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "This is a quick overview of the ingredients...",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 13,
                                  fontWeight: FontWeight.w300),
                            ),
                            Row(
                              spacing: 5,
                              children: [
                                Text(
                                  '5',
                                  style: TextStyle(
                                    color: AppColors.pinkSub,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12,
                                  ),
                                ),
                                SvgPicture.asset('assets/svg/star.svg'),
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(14),
                  child: Image.asset(
                    'assets/images/tranding_recipe.png',
                    width: 358.w,
                    height: 143.h,
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
