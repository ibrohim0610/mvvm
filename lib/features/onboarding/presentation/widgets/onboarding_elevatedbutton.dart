import 'package:flutter/material.dart';

import '../../../../core/utils/colors.dart';

class OnboardingElevatedButton extends StatelessWidget {
  const OnboardingElevatedButton({
    super.key,
    required this.title,
    required this.callback,
  });
  final String title;
  final VoidCallback callback;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed:callback,
        style: ElevatedButton.styleFrom(
          foregroundColor: AppColors.pink,
          backgroundColor: AppColors.pink,
          fixedSize: Size(207, 45),
          elevation: 0,
        ),
        child: Text(title,
          style: TextStyle(
              color: AppColors.pinkSub,
              fontSize: 20,
              fontWeight: FontWeight.w600
          ),
        )
    );
  }
}