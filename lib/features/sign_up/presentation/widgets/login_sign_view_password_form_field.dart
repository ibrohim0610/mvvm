import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/utils/colors.dart';


class LoginSignViewPasswordFormField extends StatelessWidget {
  const LoginSignViewPasswordFormField({
    super.key,
    required this.controller,
    required this.title, required this.validator,
  });

  final TextEditingController controller;
  final String? Function(String? value) validator;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 10,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
            color: Colors.white,
            fontSize: 15,
            fontWeight: FontWeight.w500,
          ),
        ),
        SizedBox(
          width: 375 ,
          child: TextFormField(
            controller: controller,
            maxLines: 1,
            validator: validator,
            style: TextStyle(
              color: AppColors.beigeColor,
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
            decoration: InputDecoration(
              suffix: SvgPicture.asset(
                "assets/svg/password.svg",
                width: 25,
                height: 25,
                alignment: Alignment.center,
                fit: BoxFit.cover,
              ),
              filled: true,
              fillColor: AppColors.pink,
              hintText: "●●●●●●●",
              hintStyle: TextStyle(
                letterSpacing: 5,
                color: AppColors.beigeColor.withValues(alpha: 0.45),
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
              contentPadding: EdgeInsets.only(left:36, right: 20),
              border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(18),
              ),
            ),
          ),
        ),
      ],
    );
  }
}