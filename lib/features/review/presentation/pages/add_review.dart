import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:recipe_app/features/review/presentation/manager/create_review/create_review_bloc.dart';
import 'package:recipe_app/features/review/presentation/widgets/create/create_review_rating_section.dart';
import 'package:recipe_app/features/review/presentation/widgets/create/create_review_recipe_section.dart';
import 'package:recipe_app/features/review/presentation/widgets/create/create_review_recommend_section.dart';
import 'package:recipe_app/features/review/presentation/widgets/create/create_review_section_field.dart';
import 'package:recipe_app/features/review/presentation/widgets/recipe_review_app_bar.dart';

import '../../../../core/presentation/widgets/recipe_text_button_container.dart';
import '../../../../core/routing/routes.dart';
import '../../../../core/utils/colors.dart';
import '../../../categories/presentation/widgets/recipe_bottom_navigationbar.dart';
import '../manager/create_review/create_review_state.dart';
import '../widgets/add_review_elevated_buttons.dart';
import '../widgets/add_review_radio_button.dart';
import '../widgets/review_add_photo.dart';

class CreateReviewView extends StatelessWidget {
  const CreateReviewView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      appBar: RecipeReviewAppBar(
        title: "Leave A Review",
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 36.w),
        child: BlocListener<CreateReviewBloc, CreateReviewState>(
            listener: (context, state) async {
              if (state.status == CreateReviewStatus.submitted) {
                await showDialog(
                  context: context,
                  barrierDismissible: false,
                  builder: (context) {
                    return Center(
                      child: Dialog(
                        backgroundColor: Colors.white,
                        child: Container(
                          width: 276.w,
                          height: 359.h,
                          padding: EdgeInsets.symmetric(
                              horizontal: 36.w, vertical: 36.h),
                          child: Column(
                            spacing: 20.h,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              SizedBox(
                                width: 170.w,
                                child: Text(
                                  "Thank you for your Review!",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: AppColors.beigeColor,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                              SvgPicture.asset("assets/icons/big-tick.svg"),
                              Text(
                                "Lorem ipsum dolor sit amet pretium cras id dui pellentesque ornare.",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: AppColors.beigeColor,
                                  fontSize: 13,
                                ),
                              ),
                              RecipeTextButtonContainer(
                                text: "Go Back",
                                textColor: Colors.white,
                                containerColor: AppColors.redPinkMain,
                                containerWidth: 207.w,
                                containerHeight: 45.h,
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                                callback: () => context.pop(),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                );
                if (context.mounted) {
                  if (context.canPop()) {
                    context.pop();
                  } else {
                    context.go(Routes.home);
                  }
                }
              }
            },
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CreateReviewRecipeSection(),
                SizedBox(height: 20),
                CreateReviewRatingSection(),
                SizedBox(height: 35),
                CreateReviewSectionField(),
                SizedBox(height: 10),
                CreateReviewAddPhotoSection(),
                SizedBox(height: 25),
                CreateReviewRecommendSection(),
                AddReviewElevatedButtons()
              ],
            )),
      ),
      bottomNavigationBar: RecipeBottomNavigationBar(),
    );
  }
}
