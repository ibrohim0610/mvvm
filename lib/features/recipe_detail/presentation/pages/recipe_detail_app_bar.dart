import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/utils/colors.dart';

class RecipeDetailAppBar extends StatelessWidget implements PreferredSizeWidget {
  const RecipeDetailAppBar({
    super.key, required this.title, required this.callback,
  });

  final String title;
  final VoidCallback callback;

  @override
  Size get preferredSize => const Size(double.infinity, 61);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 38),
      child: AppBar(
        leading: TextButton(
          onPressed: callback,
          child: Center(
              child: SvgPicture.asset(
            "assets/svg/arrow.svg",
            color: AppColors.redPinkMain,
            width: 14,
            height: 15,
          )),
        ),
        backgroundColor: AppColors.beigeColor,
        centerTitle: true,
        title: Text(
          title,
          style: TextStyle(
            color: AppColors.redPinkMain,
            fontWeight: FontWeight.w600,
            fontSize: 20,
            fontFamily: 'Poppins',
          ),
        ),
        actions: [
          Container(
            width: 28,
            height: 28,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(14),
              color: AppColors.pink,
            ),
            child: SvgPicture.asset(
              "assets/svg/heart.svg",
              color: Color(0xFFEC888D),
            ),
          ),
          SizedBox(
            width: 5,
          ),
          Container(
            width: 28,
            height: 28,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: AppColors.pink,
              borderRadius: BorderRadius.circular(14),
            ),
            child: SvgPicture.asset(
              "assets/svg/share.svg",
                width: 14,
              height: 16,
              fit: BoxFit.fill,
            ),
          )
        ],
      ),
    );
  }
}
