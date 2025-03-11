import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:recipe_app/core/core.dart';

class RecentlyAddedSectionItem extends StatelessWidget {
  const RecentlyAddedSectionItem({
    super.key,
    required this.image,
    required this.title,
    required this.desc,
    required this.rating,
    required this.duration,
  });

  final String image, title, desc;
  final num rating, duration;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: 169.w,
        height: 226.h,
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            Positioned(
              bottom: 0,
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  width: 158.w,
                  height: 90.h, //
                  padding: const EdgeInsets.all(4),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: const BorderRadius.only(
                      bottomRight: Radius.circular(14),
                      bottomLeft: Radius.circular(14),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        blurRadius: 4,
                        spreadRadius: 2,
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        desc,
                        style: const TextStyle(
                          color: Color(0xFF3E2823),
                          fontSize: 11,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Text(
                                rating.toString(),
                                style: const TextStyle(
                                  color: Color(0xFFEC888D),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              const SizedBox(width: 5),
                              SvgPicture.asset("assets/svg/star.svg"),
                            ],
                          ),
                          Row(
                            children: [
                              const Icon(Icons.access_time, size: 14, color: Color(0xFFEC888D)),
                              const SizedBox(width: 4),
                              Text(
                                "$duration min",
                                style: const TextStyle(
                                  color: Color(0xFFEC888D),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            // Image
            ClipRRect(
              borderRadius: BorderRadius.circular(14),
              child: Image.network(
                image,
                width: 169.w,
                height: 140.h,
                fit: BoxFit.cover,
              ),
            ),
            // Like button
            Positioned(
              top: 8,
              right: 8,
              child: Container(
                width: 28,
                height: 28,
                decoration: const BoxDecoration(
                  color: AppColors.redPinkMain,
                  shape: BoxShape.circle,
                ),
                child: Center(
                  child:SvgPicture.asset('assets/svg/heart.svg')
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
