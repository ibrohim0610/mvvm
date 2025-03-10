import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:recipe_app/core/core.dart';
import 'package:recipe_app/core/routing/routes.dart';
import 'package:recipe_app/features/categories/presentation/widgets/recipe_appbar.dart';
import 'package:recipe_app/features/categories/presentation/widgets/recipe_bottom_navigationbar.dart';
import 'package:recipe_app/features/community/presentation/manager/community_view_model.dart';
import 'package:recipe_app/features/community/presentation/widgets/recipe_community_list_view.dart';

import '../widgets/recipe_community_animated_container.dart';

class CommunityView extends StatefulWidget {
  const CommunityView({super.key});

  @override
  _CommunityViewState createState() => _CommunityViewState();
}

class _CommunityViewState extends State<CommunityView> {
  String selectedFilter = "Top Recipes";
  List topCommunity = [];

  @override
  void initState() {
    super.initState();
    _updateCommunityList();
  }

  void _updateCommunityList() {
    final vm = context.read<CommunityViewModel>();
    setState(() {
      topCommunity = [...vm.topCommunity];
      if (selectedFilter == "Top Recipes") {
        topCommunity.sort((a, b) => b.rating.compareTo(a.rating));
      } else if (selectedFilter == "Newest") {
        topCommunity.sort((a, b) => b.created.compareTo(a.created));
      } else if (selectedFilter == "Oldest") {
        topCommunity.sort((a, b) => a.created.compareTo(b.created));
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final vm = context.watch<CommunityViewModel>();
    if (vm.isLoading) {
      return Center(child: CircularProgressIndicator());
    } else {
      return Scaffold(
        backgroundColor: AppColors.beigeColor,
        extendBody: true,
        appBar: RecipeAppbar(title: 'Community'),
        body: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 36.w, vertical: 10.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomFilterButton(
                    title: "Top Recipes",
                    isSelected: selectedFilter == "Top Recipes",
                    callback: () {
                      setState(() {
                        selectedFilter = "Top Recipes";
                        _updateCommunityList();
                      });
                    },
                  ),

                  CustomFilterButton(
                    title: "Newest",
                    isSelected: selectedFilter == "Newest",
                    callback: () {
                      setState(() {
                        selectedFilter = "Newest";
                        _updateCommunityList();
                      });
                    },
                  ),

                  CustomFilterButton(
                    title: "Oldest",
                    isSelected: selectedFilter == "Oldest",
                    callback: () {
                      setState(() {
                        selectedFilter = "Oldest";
                        _updateCommunityList();
                      });
                    },
                  ),
                ],
              ),
            ),

            //
            Expanded(
              child: RecipeCommunityListView(
                  selectedFilter: selectedFilter,
                topCommunity: topCommunity
                ),
            ),
          ],
        ),
        bottomNavigationBar: RecipeBottomNavigationBar(),
      );
    }
  }
}
