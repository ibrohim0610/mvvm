import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:recipe_app/core/routing/routes.dart';

class TopChefSectionItem extends StatelessWidget {
  const TopChefSectionItem({
    super.key, required this.image, required this.title,
  });
  final String image, title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: ()=> context.go(Routes.topChefs),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(7),
            child: Image.network(image,
              width: 83.w,
              height: 74.h,),
          ),
        ),
        Text(title,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w400,
            fontSize: 12,
          ),),
      ],
    );
  }
}
