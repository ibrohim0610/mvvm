import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';
import 'package:recipe_app/core/core.dart';
import 'package:recipe_app/features/categories/presentation/widgets/recipe_appbar.dart';
import 'package:recipe_app/features/categories/presentation/widgets/recipe_bottom_navigationbar.dart';
import 'package:recipe_app/features/community/presentation/manager/community_view_model.dart';
import 'package:recipe_app/features/community/presentation/widgets/community_user_image_title.dart';
import 'package:recipe_app/features/community/presentation/widgets/recipe_community_review.dart';
import 'package:recipe_app/features/community/presentation/widgets/recipe_like_button.dart';

import 'recipe_community_animated_container.dart';

class RecipeCommunityTimRequired extends StatelessWidget {
  const RecipeCommunityTimRequired({
    super.key,
    required this.topCommunity, required this.timeRequired,
  });

  final List topCommunity;
  final String timeRequired;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(
          'assets/svg/clock.svg',
          color: Colors.white,
        ),
        SizedBox(
          width: 5,
        ),
        Text(
          timeRequired,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w400,
            fontSize: 12,
          ),
        ),
      ],
    );
  }
}
