import 'package:flutter/material.dart';

class MainCategoriesItem extends StatelessWidget {
  const MainCategoriesItem({
    super.key,
    required this.image,
    required this.title, required this.callback,

  });

  final VoidCallback callback;
  final String? image, title;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: callback,
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(13),
            child: Image.network(
              image!,
              width: 159,
              height: 148,
              fit: BoxFit.cover,
            ),
          ),
          Text(
            title!,
            style: TextStyle(
              color: Colors.white,
              fontSize: 15,
              fontWeight: FontWeight.w500,
            ),
          ),

        ],
      ),
    );
  }
}