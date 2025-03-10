import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:recipe_app/core/core.dart';
import 'package:recipe_app/features/community/presentation/widgets/community_title_rating.dart';
import 'package:recipe_app/features/community/presentation/widgets/community_user_image_title.dart';
import 'package:recipe_app/features/community/presentation/widgets/recipe_community_image.dart';
import 'package:recipe_app/features/community/presentation/widgets/recipe_community_review.dart';
import 'package:recipe_app/features/community/presentation/widgets/recipe_community_tim_required.dart';
import 'package:recipe_app/features/community/presentation/widgets/recipe_like_button.dart';

class RecipeCommunityListView extends StatelessWidget {
  const RecipeCommunityListView({
    super.key,
    required this.selectedFilter,
    required this.topCommunity,
  });

  final String selectedFilter;
  final List topCommunity;

  @override
  Widget build(BuildContext context) {
    return AnimatedSwitcher(
      duration: Duration(milliseconds: 500),
      child: ListView.builder(
        key: ValueKey(selectedFilter),
        padding: EdgeInsets.symmetric(horizontal: 36, vertical: 10),
        itemCount: topCommunity.length,
        itemBuilder: (context, index) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 20,
            children: [
              CommunityUserImageTitle(
                topCommunity: topCommunity,
                image: topCommunity[index].user.image,
                title: '@${topCommunity[index].user.username}',
                created: topCommunity[index].created,
              ),
              Stack(
                clipBehavior: Clip.none,
                children: [
                  RecipeCommunityImage(
                      topCommunity: topCommunity,
                    id: topCommunity[index].id,
                    image: topCommunity[index].photo,),
                  Positioned(
                    bottom: -80,
                    left: 0,
                    right: 0,
                    child: Container(
                      width: 356.w,
                      height: 98.h,
                      decoration: BoxDecoration(
                        color: AppColors.redPinkMain,
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(14),
                            bottomRight: Radius.circular(14)),
                      ),
                      child: Padding(
                        padding:
                            EdgeInsets.only(left: 10.w, right: 10.w, top: 15.h),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CommunityTitleRating(
                              topCommunity: topCommunity,
                              text: topCommunity[index].title,
                              rating: "${topCommunity[index].rating}",
                            ),
                            Stack(
                              children: [
                                Row(
                                  children: [
                                    Expanded(
                                      child: Text(
                                        topCommunity[index].desc,
                                        softWrap: true,
                                        overflow: TextOverflow.ellipsis,
                                        maxLines: 2,
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.w300,
                                            fontFamily: 'Poppins'),
                                      ),
                                    ),
                                    Column(
                                      children: [
                                        RecipeCommunityTimRequired(
                                          topCommunity: topCommunity,
                                          timeRequired:
                                              "${topCommunity[index].timeRequired} min",
                                        ),
                                        RecipeCommunityReview(
                                            topCommunity: topCommunity,
                                            reviews:
                                                '${topCommunity[index].reviewsCount}')
                                      ],
                                    )
                                  ],
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    right: 8,
                    top: 7,
                    child: RecipeLikeButton(),
                  ),
                ],
              ),
              SizedBox(
                height: 88,
              ),
              Divider(
                color: AppColors.pinkSub,
              ),
              SizedBox(
                height: 20,
              ),
            ],
          );
        },
      ),
    );
  }
}
