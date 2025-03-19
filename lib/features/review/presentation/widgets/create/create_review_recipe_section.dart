import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:recipe_app/features/review/presentation/manager/create_review/create_review_bloc.dart';
import 'package:recipe_app/features/review/presentation/manager/create_review/create_review_state.dart';
import '../../../../../core/utils/colors.dart';


class CreateReviewRecipeSection extends StatelessWidget {
  const CreateReviewRecipeSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CreateReviewBloc, CreateReviewState>(
      builder: (context, state) {
        if (state.status == CreateReviewStatus.loading) {
          return Center(
            child: SizedBox.fromSize(
              size: Size(double.infinity, 262.h),
              child: Center(child: CircularProgressIndicator()),
            ),
          );
        } else if (state.status == CreateReviewStatus.idle) {
          return Center(
            child: SizedBox.fromSize(
              size: Size(double.infinity, 262.h),
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      width: double.infinity,
                      height: 100,
                      padding: EdgeInsets.only(bottom: 16.h),
                      alignment: Alignment.bottomCenter,
                      decoration: BoxDecoration(
                        color: AppColors.redPinkMain,
                        borderRadius:
                        BorderRadius.vertical(bottom: Radius.circular(10)),
                      ),
                      child: Text(
                        state.recipeModel!.title,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: CachedNetworkImage(
                      imageUrl: state.recipeModel!.image,
                      width: double.infinity,
                      height: 206.h,
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            ),
          );
        } else {
          return Center(
            child: SizedBox.fromSize(
              size: Size(double.infinity, 262.h),
              child: Text("Something went wrong fetching the Image."),
            ),
          );
        }
      },
    );
  }
}