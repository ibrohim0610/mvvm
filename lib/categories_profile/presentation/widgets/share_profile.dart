import 'package:flutter/material.dart';

class ProfileShareEdit extends StatelessWidget {
  const ProfileShareEdit({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: 175,
      height: 27,
      decoration: BoxDecoration(
        color: Color(0xFFFFC6C9),
        borderRadius: BorderRadius.circular(14),
      ),
      child: Text(title,style: TextStyle(
        color: Color(0xFFEC888D),
        fontSize: 15,
        fontWeight: FontWeight.w500,
      ),),
    );
  }
}