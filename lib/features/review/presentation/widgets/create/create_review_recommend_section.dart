import 'package:flutter/material.dart';
import 'package:recipe_app/features/review/presentation/widgets/create/create_review_recommend_section_option.dart';

class CreateReviewRecommendSection extends StatelessWidget {
  const CreateReviewRecommendSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Do you recommend this recipe?",
          style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w400,
              fontSize: 12,
              fontFamily: 'Poppins'),
        ),
        CreateReviewRecommendSectionOption(text: 'No', value: false,),
        CreateReviewRecommendSectionOption(text: 'Yes', value: true,),
      ],
    );
  }
}
