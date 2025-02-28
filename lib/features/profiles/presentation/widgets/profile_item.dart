import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:recipe_app/features/categories_detail/data/models/categories_detail_model.dart';

import '../../../../core/routing/routes.dart';

class ProfileItem extends StatelessWidget {
  const ProfileItem({
    super.key,
    required this.image,
    required this.title,
    required this.desc,
    required this.rating,
    required this.duration, required this.id,
  });

  final String image, title, desc;
  final int id;
  final num rating;
  final num duration;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:()=> context.go(Routes.recipeBuilder(id)),
      child: Column(
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              Positioned(
                bottom: -150,
                right: 5,
                left: 5,
                child: Container(
                  padding: EdgeInsets.all(5),
                  width: 159,
                  height: 200,
                  decoration: BoxDecoration(
                    color: Color(0xFFFFFDF9),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(14),
                      bottomRight: Radius.circular(14),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: const TextStyle(
                          color: Color(0xFF3E2823),
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          decoration: TextDecoration.none,
                        ),
                      ),
                      Text(
                        desc,
                        style: const TextStyle(
                            color: Color(0xFF3E2823),
                            fontSize: 13,
                            fontWeight: FontWeight.w300,
                            decoration: TextDecoration.none),
                      ),
                      Spacer(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            spacing: 5,
                            children: [
                              Text(
                                rating.toString(),
                                style: TextStyle(
                                    color: Color(0xFFEC888D),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    decoration: TextDecoration.none),
                              ),
                              SvgPicture.asset("assets/svg/star.svg"),
                            ],
                          ),
                          Row(
                            spacing: 5,
                            children: [
                              Text(
                                "${duration.toString()} min",
                                style: TextStyle(
                                  color: Color(0xFFEC888D),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  decoration: TextDecoration.none,
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap:()=> context.go(Routes.recipeBuilder(id)),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(14),
                  child: Image(
                    image: NetworkImage(image),
                    width: 169,
                    height: 153,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                top: 5,
                right: 5,
                child: Container(
                  width: 28,
                  height: 28,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14),
                      color: Color(0xFFFD5D69)),
                  child: SvgPicture.asset(
                    "assets/svg/heart.svg",
                    fit: BoxFit.none,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}