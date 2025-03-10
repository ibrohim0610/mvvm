import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';
import 'package:recipe_app/core/core.dart';
import 'package:recipe_app/features/categories/presentation/widgets/recipe_appbar.dart';
import 'package:recipe_app/features/categories/presentation/widgets/recipe_bottom_navigationbar.dart';
import 'package:recipe_app/features/community/presentation/manager/community_view_model.dart';
import 'package:recipe_app/features/community/presentation/widgets/community_user_image_title.dart';
import 'package:recipe_app/features/community/presentation/widgets/recipe_like_button.dart';

import 'recipe_community_animated_container.dart';

class RecipeCommunityReview extends StatelessWidget {
  const RecipeCommunityReview({
    super.key,
    required this.topCommunity, required this.reviews,
  });

  final List topCommunity;
  final String reviews;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          reviews,
          style: TextStyle(
              color: Colors.white,
              fontSize: 12,
              fontWeight: FontWeight.w400,
              fontFamily: 'Poppins'),
        ),
        SizedBox(
          width: 5,
        ),
        SvgPicture.asset(
          'assets/svg/reviews.svg',
          color: Colors.white,
        )
      ],
    );
  }
}
