import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OnboardingViewAppBarTop extends StatelessWidget {
  const OnboardingViewAppBarTop({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Color(0xFF1C0F0D),
      leadingWidth: 90,
      leading: Center(
        child: IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(
            "assets/svg/arrow.svg",
            fit: BoxFit.none,
          ),
        ),
      ),
    );
  }
}
