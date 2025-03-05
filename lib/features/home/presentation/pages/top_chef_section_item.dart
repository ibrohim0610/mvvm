import 'package:flutter/material.dart';

class TopChefSectionItem extends StatelessWidget {
  const TopChefSectionItem({
    super.key, required this.image, required this.title,
  });
  final String image, title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(7),
          child: Image.asset(image,
            width: 83,
            height: 74,),
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
