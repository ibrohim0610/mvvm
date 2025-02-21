import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:recipe_app/core/core.dart';

class ProfilePageContentAlign extends StatelessWidget {
  const ProfilePageContentAlign({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        clipBehavior: Clip.none,
        width: 281,
        height: 56,
        decoration: BoxDecoration(
          color: AppColors.redPinkMain,
          borderRadius: BorderRadius.circular(33),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SvgPicture.asset("assets/svg/home.svg"),
            SvgPicture.asset("assets/svg/community.svg"),
            SvgPicture.asset("assets/svg/categories.svg"),
            SvgPicture.asset("assets/svg/profile.svg"),
          ],
        ),
      ),
    );
  }
}
