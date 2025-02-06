import 'package:flutter/material.dart';

class Following extends StatelessWidget {
  const Following({super.key, required viewModel});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 356,
      height: 50,
      decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(14),
          border: Border.all(
            width: 1,
            color: Color(0xFFFFC6C9),
          )
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ItemsFollowing(title: "recipes", num: "60"),
          Container(
            width: 1,
            height: 26,
            color: Color(0xFFFFC6C9),
          ),
          ItemsFollowing(title: "Following", num: "120"),
          Container(
            width: 1,
            height: 26,
            color: Color(0xFFFFC6C9),
          ),
          ItemsFollowing(title: "Followers", num: "250"),
        ],
      ),
    );
  }
}

class ItemsFollowing extends StatelessWidget {
  const ItemsFollowing({
    super.key,
    required this.title,
    required this.num,
  });

  final String title, num;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        spacing: 1,
        children: [
          Text(
            num,
            style: TextStyle(
              color: Colors.white,
              fontSize: 15,
              fontWeight: FontWeight.w500,
            ),
          ),
          Text(
            title,
            style: TextStyle(
              color: Colors.white,
              fontSize: 12,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}