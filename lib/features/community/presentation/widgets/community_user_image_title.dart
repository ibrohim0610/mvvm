import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';
import 'package:recipe_app/core/core.dart';
import 'package:recipe_app/features/categories/presentation/widgets/recipe_appbar.dart';
import 'package:recipe_app/features/categories/presentation/widgets/recipe_bottom_navigationbar.dart';
import 'package:recipe_app/features/community/presentation/manager/community_view_model.dart';
import 'package:recipe_app/features/community/presentation/widgets/recipe_like_button.dart';
import 'package:recipe_app/features/community/presentation/widgets/created_date_counter.dart';

import 'recipe_community_animated_container.dart';

class CommunityUserImageTitle extends StatelessWidget {
  const CommunityUserImageTitle({
    super.key,
    required this.topCommunity, required this.image, required this.title, required this.created,
  });

  final List topCommunity;
  final String image, title, created;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(23),
          child: CachedNetworkImage(
            imageUrl: image,
            width: 46.w,
            height: 46.h,
            fit: BoxFit.cover,
            placeholder: (context, url) => Center(
              child: SizedBox(
                width: 16,
                height: 16,
                child: CircularProgressIndicator(strokeWidth: 2),
              ),
            ),
          ),),
        SizedBox(
          width: 5,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(
                color: Colors.white,
                fontSize: 15,
                fontWeight: FontWeight.w400,
              ),
            ),
            Text(
              timeAgo(
                created,
              ),
              style: TextStyle(color: AppColors.pinkSub),
            )
          ],
        )
      ],
    );
  }
}
