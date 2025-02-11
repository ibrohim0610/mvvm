import 'package:flutter/material.dart';

import 'onboarding_elevatedbutton.dart';

class OnboardingViewBottomNavBar extends StatelessWidget {
  const OnboardingViewBottomNavBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 150,
      child: Padding(
        padding: EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            OnboardingElevatedButton(callback: () {}, title: "I'm New"),
            OnboardingElevatedButton(callback: () {}, title: "I've Been Here"),
          ],
        ),
      ),
    );
  }
}
