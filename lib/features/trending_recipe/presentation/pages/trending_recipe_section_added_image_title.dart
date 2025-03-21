import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:recipe_app/core/core.dart';

class TrendingRecipeSectionAddedImageTitle extends StatelessWidget {
  const TrendingRecipeSectionAddedImageTitle({
    super.key, required this.image, required this.title, required this.desc, required this.username, required this.duration, required this.rating,
  });
  final String image, title, desc, username,duration;
  final String rating;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 358.w,
      height: 150.h,
      child: Stack(
        alignment: Alignment.centerLeft,
        children: [
          Align(
            alignment: Alignment.centerRight,
            child: Container(
              padding: EdgeInsets.only(
                  right: 10.w, left: 10.w, top: 10.h, bottom: 10.h),
              width: 207.w,
              height: 122.h,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(14),
                      topRight: Radius.circular(14))),
              child: Column(
                spacing: 5,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400),
                  ),
                  Text(
                    desc,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                        fontFamily: 'League Spartan',
                        fontWeight: FontWeight.w300),
                  ),
                  Text(
                    username,
                    style: TextStyle(
                        color: AppColors.pinkSub,
                        fontSize: 12,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w300),
                  ),
                  Row(
                    spacing: 20,
                    children: [
                      Row(
                        spacing: 5,
                        children: [
                          SvgPicture.asset('assets/svg/clock.svg'),
                          Text(
                            duration,
                            style: TextStyle(
                              color: AppColors.pinkSub,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400,
                              fontSize: 12,
                            ),
                          )
                        ],
                      ),
                      Row(
                        spacing: 5,
                        children: [
                          Text(
                            'Easy',
                            style: TextStyle(
                              color: AppColors.pinkSub,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400,
                              fontSize: 12,
                            ),
                          ),
                          SvgPicture.asset('assets/svg/parent.svg'),
                        ],
                      ),
                      Row(
                        spacing: 5,
                        children: [
                          Text(
                            rating,
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
          Positioned(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(14),
              child: Image.asset(
                image,
                width: 151.w,
                height: 150.h,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
