import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:recipe_app/core/core.dart';
import 'package:recipe_app/core/presentation/widgets/recipe_text_button_container.dart';
import 'package:recipe_app/features/review/presentation/manager/create_review/create_review_bloc.dart';

class AddReviewElevatedButtons extends StatelessWidget {
  const AddReviewElevatedButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 20.w,
      children: [
        RecipeTextButtonContainer(
            text: 'Cancel',
            textColor: AppColors.pinkSub,
            containerColor: AppColors.pink,
            containerWidth: 168.w,
            containerHeight: 29.h,
            callback: ()=> context.pop()
        ),
        RecipeTextButtonContainer(
            text: 'Submit',
            textColor: AppColors.pinkSub,
            containerColor: AppColors.pink,
            callback: ()=> context.read<CreateReviewBloc>().add(CreateReviewSubmit())
        )
      ],
    );
  }
}
