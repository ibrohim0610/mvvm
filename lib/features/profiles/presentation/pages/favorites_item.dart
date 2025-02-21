import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:recipe_app/core/core.dart';


class FavoritesItem extends StatelessWidget {
  const FavoritesItem({
    super.key, required this.image, required this.title,
  });
final String image ,title;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Positioned(
            bottom: -35,
            right: 5,
            left: 5,
            child: Container(
              alignment: Alignment.center,
              width: 346,
              height: 44,
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: AppColors.redPinkMain, width: 1),
                  borderRadius: BorderRadius.vertical(
                    bottom: Radius.circular(20),
                  )),
              child: Text(
                title,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w400
                ),
              ),
            ),
          ),
          Container(
            width: 356,
            height: 103,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withValues(alpha: 0.5),
                  offset: Offset(0, 8),
                  blurRadius: 4,
                spreadRadius: 0
                ),
                ]
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(image,
              width: 356,
              height: 103,
              fit: BoxFit.cover,
              ),
            ),
            ),
        ],
      ),
    );
  }
}
