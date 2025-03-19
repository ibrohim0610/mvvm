import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../core/utils/colors.dart';
import '../../manager/create_review/create_review_bloc.dart';
import '../../manager/create_review/create_review_state.dart';

class CreateReviewRecommendSectionOption extends StatelessWidget {
  const CreateReviewRecommendSectionOption({
    super.key,
    required this.text,
    required this.value,
  });

  final String text;
  final bool value;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CreateReviewBloc, CreateReviewState>(
      builder: (context, state) => Row(
        children: [
          Text(
            text,
            style: TextStyle(
              color: Colors.white,
              fontSize: 15,
              fontWeight: FontWeight.w300,
            ),
          ),
          Radio(
            value: value,
            fillColor: WidgetStateColor.fromMap({
              WidgetState.any: AppColors.redPinkMain,
            }),
            groupValue: state.doesRecommend,
            onChanged: (value) => context.read<CreateReviewBloc>().add(
              CreateReviewRecommendOrNot(value: value!),
            ),
          ),
        ],
      ),
    );
  }
}