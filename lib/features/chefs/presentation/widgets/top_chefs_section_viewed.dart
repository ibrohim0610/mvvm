import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:recipe_app/core/core.dart';
import 'package:recipe_app/features/chefs/presentation/manager/top_chef_state.dart';
import 'package:recipe_app/features/chefs/presentation/manager/top_chefs_bloc.dart';
import 'package:recipe_app/features/chefs/presentation/widgets/top_chefs_section_image_title.dart';

class TopChefsSectionViewed extends StatelessWidget {
  const TopChefsSectionViewed({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TopChefsBloc, TopChefsState>(
      builder: (context, state) {
        if (state.mostViewedChefsStatus == TopChefsStatus.loading) {
          return Center(child: CircularProgressIndicator());
        }else if (state.mostViewedChefsStatus == TopChefsStatus.idle) {
        }return
        Center(
          child: Column(
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
                        for (var chef in state.mostViewedChefs)TopChefsSectionImageTitle(image: chef.image, title: chef.username, username: chef.firstName, rating: 4456,),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        );
      }
    );
  }
}
