import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:recipe_app/core/core.dart';
import 'package:recipe_app/features/trending_recipe/presentation/manager/trending_recipe_bloc.dart';
import 'package:recipe_app/features/trending_recipe/presentation/manager/trending_recipe_state.dart';

class TrendingRecipeMostViewed extends StatelessWidget {
  const TrendingRecipeMostViewed({
    super.key,
    required this.desc,
    required this.photo,
    required this.title,
    required this.timeRequired,
    required this.rating,
  });
  final String desc, photo, title;
  final num timeRequired, rating;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TrendingRecipeBloc, TrendingRecipeState>(
        builder: (context, state) {
          if (state.recipeStatus == TrendingRecipesStatus.loading) {
            return Center(child: CircularProgressIndicator());
          }else if (state.recipeStatus == TrendingRecipesStatus.idle) {
          }
          return
          Container(
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
                                    title,
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
                                        "$timeRequired min",
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
                                  SizedBox(
                                    width: 250.w,
                                    child: Text(
                                      desc,
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 13,
                                          fontWeight: FontWeight.w300),
                                    ),
                                  ),
                                  Row(
                                    spacing: 5,
                                    children: [
                                      Text(
                                        "${rating}",
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
                        child: Image.network(
                          photo,
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
    );
  }
}
