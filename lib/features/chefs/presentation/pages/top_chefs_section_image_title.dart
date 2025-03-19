import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:recipe_app/core/core.dart';

class TopChefsSectionImageTitle extends StatelessWidget {
  const TopChefsSectionImageTitle({
    super.key, required this.image, required this.title, required this.username, required this.rating,
  });
  final String image, title, username;
  final int rating;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 169.w,
      height: 217.h,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              padding: EdgeInsets.all(10),
              width: 159.w,
              height: 76.h,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(14),
                      bottomRight: Radius.circular(14))),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    username,
                    style: TextStyle(
                      color: AppColors.redPinkMain,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w300,
                      fontSize: 12,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        spacing: 5,
                        children: [
                          Text(
                            '5484',
                            style: TextStyle(
                                color: AppColors.pinkSub,
                                fontSize: 12,
                                fontWeight: FontWeight.w400),
                          ),
                          SvgPicture.asset('assets/svg/star.svg')
                        ],
                      ),
                      Row(
                        spacing: 5,
                        children: [
                          SizedBox(
                            width: 44.w,
                            height: 14.h,
                            child: ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                    foregroundColor: Colors.white,
                                    backgroundColor: AppColors.pinkSub),
                                child: Center(
                                  child: Text(
                                    'Following',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 8),
                                  ),
                                )),
                          ),
                          Container(
                            width: 14.w,
                            height: 14.h,
                            decoration: BoxDecoration(
                                color: AppColors.redPinkMain,
                                borderRadius: BorderRadius.circular(7)),
                            child: Center(
                                child: SvgPicture.asset(
                              'assets/svg/share.svg',
                              color: Colors.white,
                              width: 7,
                              height: 8,
                            )),
                          )
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
          Image.asset(
            image,
            width: 170.w,
            height: 153.h,
            fit: BoxFit.cover,
          ),
        ],
      ),
    );
  }
}
