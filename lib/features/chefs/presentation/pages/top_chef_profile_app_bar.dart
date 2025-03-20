import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:recipe_app/core/core.dart';
import 'package:recipe_app/features/profiles/presentation/widgets/recipe_circular_button.dart';

class TopChefProfileAppBar extends StatelessWidget implements PreferredSizeWidget{
  const TopChefProfileAppBar({
    super.key,
  });
  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size(double.infinity, 61);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 37),
      child: AppBar(
        backgroundColor: AppColors.beigeColor,
        leading: Center(child: SvgPicture.asset('assets/svg/arrow.svg')),
        title: Text(
          '@Neil_tran',
          style: TextStyle(
              color: AppColors.redPinkMain,
              fontSize: 20,
              fontWeight: FontWeight.w600,
              fontFamily: 'Poppins'),
        ),
        actions: [
          Row(
            spacing: 5,
            children: [
              RecipeCircularButton(
                  callBack: () {}, image: 'assets/svg/share.svg'),
              RecipeCircularButton(
                  callBack: () {}, image: 'assets/svg/three_dots.svg'),
            ],
          )
        ],
      ),
    );
  }
}
