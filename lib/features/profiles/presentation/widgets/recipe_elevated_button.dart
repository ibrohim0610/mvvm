import 'package:flutter/material.dart';
import 'package:recipe_app/core/core.dart';

class RecipeElevatedButton extends StatelessWidget {
  const RecipeElevatedButton({
    super.key, required this.text,
     this.backgroundColor = AppColors.pink,
     this.foregroundColor = AppColors.pinkSub,
     this.size = const  Size(175 , 27,), required this.callBack,
  });

  final String text;

  final Color backgroundColor , foregroundColor;
  final Size size;
  final VoidCallback callBack;
  @override
  Widget build(BuildContext context) {
    return SizedBox.fromSize(
      size: size,
      child: ElevatedButton(
          onPressed: callBack,
          style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.pink,
              foregroundColor: AppColors.pinkSub),
          child: Text(
            text,
            style: TextStyle(
              fontSize: 15,
              fontFamily: "Poppins",
                fontWeight: FontWeight.w500
            ),
          )),
    );
  }
}
