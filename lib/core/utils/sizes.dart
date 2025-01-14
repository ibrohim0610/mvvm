import 'package:flutter/material.dart';

class AppSizes {
  static late double padding38;
  static late double padding36;
  static late double wRatio;
  static late double hRatio;
  static late double bottomNavBarWidth;
  static late double bottomNavBarHeight;

  static init(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    wRatio = size.width / 430;
    hRatio = size.height / 932;
    padding38 = 32 * wRatio;
    padding36 = 30 * wRatio;
    bottomNavBarWidth = 281 * wRatio;
    bottomNavBarHeight = 56 * hRatio;
  }
}
