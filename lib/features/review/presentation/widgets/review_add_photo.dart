import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:recipe_app/core/core.dart';

class ReviewAddPhoto extends StatelessWidget {
  const ReviewAddPhoto({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 10,
      children: [
        Container(
          width: 21,
          height: 21,
          decoration: BoxDecoration(
              color: AppColors.pink, borderRadius: BorderRadius.circular(10.5)),
          child: Center(child: SvgPicture.asset('assets/svg/plus.svg')),
        ),
        Text(
          'Add Photo',
          style: TextStyle(
              color: Colors.white,
              fontFamily: 'Poppins',
              fontSize: 15,
              fontWeight: FontWeight.w500),
        ),
      ],
    );
  }
}
