import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({
    super.key,
    required this.title,
    required this.image, required this.callback,
  });

  final String? title, image;
  final VoidCallback callback;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: callback,
      child: Column(
        children: [
          Text(
            title!,
            style: TextStyle(
              color: Colors.white,
              fontSize: 15,
              fontWeight: FontWeight.w500,
            ),
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(13),
            child: Image.network(
              image!,
              width: 356,
              height: 148,
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}