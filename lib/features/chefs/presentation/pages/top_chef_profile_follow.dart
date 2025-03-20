import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:recipe_app/core/core.dart';
import 'package:recipe_app/features/profiles/presentation/widgets/profile_app_bar_bottom_stats.dart';

class TopChefProfileFollow extends StatelessWidget {
  const TopChefProfileFollow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 356.w,
      height: 50.h,
      padding: EdgeInsets.only(
        right: 20.w,
        left: 20.w,
      ),
      decoration: BoxDecoration(
          border: Border.all(color: AppColors.pinkSub, width: 1),
          borderRadius: BorderRadius.circular(14)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ProfileAppBarBottomStats(number: 15, subtitle: 'Recipes'),
          Container(
            height: 26,
            width: 2,
            color: AppColors.pink,
          ),
          ProfileAppBarBottomStats(number: 10, subtitle: 'Following'),
          Container(
            height: 26,
            width: 2,
            color: AppColors.pink,
          ),
          ProfileAppBarBottomStats(number: 255, subtitle: 'Followers')
        ],
      ),
    );
  }
}
