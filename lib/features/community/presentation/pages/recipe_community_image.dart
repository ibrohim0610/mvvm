import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/routing/routes.dart';



class RecipeCommunityImage extends StatelessWidget {
  const RecipeCommunityImage({
    super.key,
    required this.topCommunity, required this.id, required this.image,
  });

  final List topCommunity;
  final int id;
  final String image;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ()=> context.go(Routes.recipeBuilder(id)),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(14),
        child: CachedNetworkImage(
          imageUrl: image,
          width: 356.w,
          height: 173.h,
          fit: BoxFit.cover,
          placeholder: (context, url) => Center(
            child: SizedBox(
              width: 24,
              height: 24,
              child: CircularProgressIndicator(strokeWidth: 2),
            ),
          ),
        ),
      ),
    );
  }
}
