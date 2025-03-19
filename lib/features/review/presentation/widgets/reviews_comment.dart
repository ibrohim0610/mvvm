import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import 'package:recipe_app/core/utils/colors.dart';

import '../../../../core/data/models/recipe_reviews_comment_model.dart';

class ReviewComment extends StatelessWidget {
  const ReviewComment({
    super.key,
    required this.comment,
  });


  final ReviewCommentModel comment;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 36, vertical: 25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 20),
          Text(
            "Comments",
            style: TextStyle(
              color: AppColors.redPinkMain,
              fontWeight: FontWeight.w500,
              fontSize: 15,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 15,
            children: [
              Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(12.5),
                    child: Image.network(
                      comment.image,
                      width: 35.w,
                      height: 35.h,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    '@${comment.userModel.userName}',
                    style: TextStyle(
                        color: AppColors.redPinkMain,
                        fontSize: 15,
                        fontWeight: FontWeight.w400),
                  ),
                  SizedBox(width: 100),
                  Text(
                    comment.created,
                    style: TextStyle(
                        color: AppColors.redPinkMain,
                        fontSize: 12,
                        fontWeight: FontWeight.w400),
                  )
                ],
              ),
              Text(
                comment.comment,
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
          )
        ],
      ),
    );
  }
}