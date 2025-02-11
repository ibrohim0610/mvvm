import 'package:flutter/material.dart';

class ProfileAppBarBottomStats extends StatelessWidget {
  const ProfileAppBarBottomStats({
    super.key, required this.number, required this.subtitle,
  });

  final int number;
  final String  subtitle;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          number.toString(),
          style: TextStyle(
              fontFamily: "Poppins",
              color: Colors.white,
              fontWeight: FontWeight.w500,
              fontSize: 15),
        ),
        Text(
          subtitle,
          style: TextStyle(
            color: Colors.white,
            fontFamily: "Poppins",
            fontSize: 12,
            height: 1,
          ),
        ),
      ],
    );
  }
}
