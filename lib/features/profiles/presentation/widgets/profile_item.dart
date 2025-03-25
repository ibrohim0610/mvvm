import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
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
        spacing: 40,
        children: [
          SizedBox(
            width: 169.w,
            height: 226.h,
            child: Stack(
              alignment: Alignment.topCenter,
              clipBehavior: Clip.none,
              children: [
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    padding: EdgeInsets.all(5),
                    width: 159.w,
                    height: 76.h,
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
                        Text(desc,
                          maxLines: 1,
                          softWrap: true,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
                              color: Color(0xFF3E2823),
                              fontSize: 13,
                              fontWeight: FontWeight.w300,
                              fontFamily: "League Spartan",
                              decoration: TextDecoration.none
                          ),
                        ),
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
                      width: 169.w,
                      height: 153.h,
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
          ),
        ],
      ),
    );
  }
}