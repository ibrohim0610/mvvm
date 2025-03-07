import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:recipe_app/core/routing/routes.dart';
import 'package:recipe_app/features/categories/presentation/widgets/recipe_icon_button.dart';
import '../../../../core/utils/colors.dart';


class RecipeBottomNavigationBar extends StatelessWidget {
  const RecipeBottomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Positioned(
          child: _BottomNavigationBarShadow(),
        ),
        Positioned(
          bottom: 36,
          child: _BottomNavigationBarVanilla(),
        ),
      ],
    );
  }
}

class _BottomNavigationBarVanilla extends StatelessWidget {
  const _BottomNavigationBarVanilla({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 281 ,
      height: 56,
      decoration: BoxDecoration(
        color: AppColors.redPinkMain,
        borderRadius: BorderRadius.circular(33),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          RecipeIconButton(
            image: "assets/svg/home.svg",
            width: 25,
            height: 22,
            color: Colors.white,
            callback: () {},
          ),
          RecipeIconButton(
            image: "assets/svg/community.svg",
            width: 24,
            height: 22,
            color: Colors.white,
            callback: () =>context.go(Routes.community),
          ),
          RecipeIconButton(
            image: "assets/svg/categories.svg",
            width: 27,
            height: 27,
            color: Colors.white,
            callback: () => context.go('/categories'),
          ),
          RecipeIconButton(
            image: "assets/svg/profile.svg",
            width: 15,
            height: 22,
            color: Colors.white,
            callback: () => context.go(Routes.completeProfile),
          )
        ],
      ),
    );
  }
}

class _BottomNavigationBarShadow extends StatelessWidget {
  const _BottomNavigationBarShadow({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 100,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.black, Colors.transparent],
          begin: Alignment.bottomCenter,
          end: Alignment.topCenter,
        ),
      ),
    );
  }
}
