import 'package:flutter/material.dart';

class LoginSignViewText extends StatelessWidget {
  const LoginSignViewText({
    super.key, required this.text,
  });
  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: Colors.white,
        fontSize: 13,
        fontWeight: FontWeight.w300,
      ),
    );
  }
}
