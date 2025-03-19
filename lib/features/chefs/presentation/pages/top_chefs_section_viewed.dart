import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:recipe_app/core/core.dart';
import 'package:recipe_app/features/chefs/presentation/pages/top_chefs_section_image_title.dart';

class TopChefsSectionViewed extends StatelessWidget {
  const TopChefsSectionViewed({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 36.w, vertical: 16.h),
          width: 430.w,
          height: 285.h,
          decoration: BoxDecoration(
              color: AppColors.redPinkMain,
              borderRadius: BorderRadius.circular(20)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 10,
            children: [
              Text(
                'Most Viewed chefs',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Poppins'),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TopChefsSectionImageTitle(image: 'assets/images/neil.png',title: 'Neil Tran-Chef',username: '@neil_tran', rating: 4456,),
                TopChefsSectionImageTitle(image: 'assets/images/jessica.png',title: 'Jessica Davis',username: '@jessica_davis', rating: 5154,),
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}
