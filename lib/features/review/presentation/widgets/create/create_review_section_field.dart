import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recipe_app/features/review/presentation/manager/create_review/create_review_bloc.dart';

import '../../../../../core/utils/colors.dart';

class CreateReviewSectionField extends StatelessWidget {
  const CreateReviewSectionField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLines: 5,
      minLines: 5,
      controller: context.read<CreateReviewBloc>().reviewController,
      style: TextStyle(color: AppColors.beigeColor),
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          filled: true,
          fillColor: AppColors.pink,
          hintText: 'Leave us Review!',
          hintStyle: TextStyle(
            color: AppColors.beigeColor.withValues(alpha: 0.5),
          ),
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(14),
          )),
    );
  }
}
