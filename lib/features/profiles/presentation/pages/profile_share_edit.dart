import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:recipe_app/core/core.dart';
class ProfileShareEdit extends StatelessWidget {
  const ProfileShareEdit({
    super.key, required this.title,
  });
final String title;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 175,
      height: 27,
      decoration: BoxDecoration(
        color: AppColors.pink,
        borderRadius: BorderRadius.circular(14),
      ),
      child: Center(
        child: Text(
          title,
          style: TextStyle(
              color: AppColors.pinkSub,
              fontWeight: FontWeight.w500,
              fontSize: 15),
        ),
      ),
    );
  }
}
