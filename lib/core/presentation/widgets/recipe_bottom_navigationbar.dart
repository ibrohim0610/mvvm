import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../core.dart';

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
      width: AppSizes.bottomNavBarWidth,
      height: AppSizes.bottomNavBarHeight,
      decoration: BoxDecoration(
        color: AppColors.redPinkMain,
        borderRadius: BorderRadius.circular(33),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          RecipeIconButton(
            image: "assets/icons/home.svg",
            width: 25,
            height: 22,
            color: Colors.white,
            callback: () {},
          ),
          RecipeIconButton(
            image: "assets/icons/community.svg",
            width: 24,
            height: 22,
            color: Colors.white,
            callback: () {},
          ),
          RecipeIconButton(
            image: "assets/icons/categories.svg",
            width: 27,
            height: 27,
            color: Colors.white,
            callback: () => context.go('/categories'),
          ),
          RecipeIconButton(
            image: "assets/icons/profile.svg",
            width: 15,
            height: 22,
            color: Colors.white,
            callback: () {},
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
