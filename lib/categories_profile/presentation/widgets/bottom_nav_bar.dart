import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BottomNavBar2 extends StatelessWidget {
  const BottomNavBar2({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        clipBehavior: Clip.none,
        width: 281,
        height: 56,
        decoration: BoxDecoration(
          color: Color(0xFFFD5D69),
          borderRadius: BorderRadius.circular(33),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SvgPicture.asset("assets/svg/home.svg"),
            SvgPicture.asset("assets/svg/massages.svg"),
            SvgPicture.asset("assets/svg/categories.svg"),
            SvgPicture.asset("assets/svg/profile.svg"),
          ],
        ),
      ),
    );
  }
}