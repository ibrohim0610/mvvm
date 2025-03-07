import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:recipe_app/core/core.dart';

class RecipeLikeButton extends StatefulWidget {
  const RecipeLikeButton({
    super.key,
  });

  @override
  State<RecipeLikeButton> createState() => _RecipeLikeButtonState();
}

class _RecipeLikeButtonState extends State<RecipeLikeButton> {

  bool isLike = true;
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: (){
        setState(() {
          isLike = !isLike;
        });
      },
      icon: Container(
        width: 28,
        height: 28,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(14),
            color: isLike ? AppColors.redPinkMain : AppColors.pink),
        child: Center(
            child: SvgPicture.asset(
          'assets/svg/heart.svg',
         colorFilter: ColorFilter.mode(isLike ? Colors.white : AppColors.redPinkMain, BlendMode.srcIn),
        )),
      ),
    );
  }
}
