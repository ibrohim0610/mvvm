import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/utils/colors.dart';
import '../manager/create_review/create_review_bloc.dart';
import '../manager/create_review/create_review_state.dart';

class CreateReviewAddPhotoSection extends StatelessWidget {
  const CreateReviewAddPhotoSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            SizedBox.fromSize(
              size: Size(21.w, 21.h),
              child: IconButton(
                style: IconButton.styleFrom(
                  backgroundColor: AppColors.pink,
                  padding: EdgeInsets.zero,
                ),
                color: AppColors.redPinkMain,
                onPressed: () async => context
                    .read<CreateReviewBloc>()
                    .add(CreateReviewPickImage()),
                iconSize: 18,
                icon: Icon(Icons.add),
              ),
            ),
            Text("Add photo"),
          ],
        ),
        SizedBox(height: 5),
        BlocBuilder<CreateReviewBloc, CreateReviewState>(
          builder: (context, state) {
            if (state.pickedImage != null) {
              return Align(
                alignment: Alignment.centerLeft,
                child: Image.file(
                  state.pickedImage!,
                  width: 80,
                  height: 80,
                  fit: BoxFit.cover,
                ),
              );
            } else {
              return SizedBox.shrink();
            }
          },
        ),
      ],
    );
  }
}