import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:recipe_app/profile/presentation/pages/profile_view_model.dart';
import '../widgets/bottom_nav_bar.dart';
import '../widgets/favorites_item.dart';
import '../widgets/follow_profile.dart';
import '../widgets/profile_item.dart';
import '../widgets/share_profile.dart';


class ProfileView extends StatelessWidget implements PreferredSizeWidget {
  const ProfileView({
    super.key,
    required this.viewModel,
  });

  final ProfileViewModel viewModel;

  @override
  Size get preferredSize => const Size(double.infinity, 241);

  @override
  Widget build(BuildContext context) {
    return ListenableBuilder(
      listenable: viewModel,
      builder: (context, child) => DefaultTabController(
        length: 2,
        child: switch (viewModel.loading) {
          true => Center(child: CircularProgressIndicator()),
          false => Scaffold(
            backgroundColor: Color(0xFF1C0F0D),
            appBar: AppBar(
              toolbarHeight: 97,
              backgroundColor: Color(0xFF1C0F0D),
              title: Row(
                spacing: 10,
                children: [
                  SizedBox(
                    width: 102,
                    height: 97,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(500),
                      child: Image.network(
                        viewModel.profile!.profilePhoto,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 200,
                    height: 72,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          viewModel.profile!.fullName,
                          style: TextStyle(
                            color: Color(0xFFFD5D69),
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          "@${viewModel.profile!.username}",
                          style: TextStyle(
                            color: Color(0xFFEC888D),
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Text(
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          viewModel.profile!.presentation,
                          style: TextStyle(
                            color: Color(0xFFFFFDF9),
                            fontSize: 12,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              actions: [
                Align(
                  alignment: Alignment.topCenter,
                  child: SizedBox(
                    width: 61,
                    height: 28,
                    child: Row(
                      spacing: 4,
                      children: [
                        Container(
                          alignment: Alignment.center,
                          width: 28,
                          height: 28,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(14),
                            color: Color(0xFFFFC6C9),
                          ),
                          child: IconButton(
                            onPressed: () {},
                            icon: SvgPicture.asset(
                              "assets/svg/heart.svg",
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Container(
                          alignment: Alignment.center,
                          width: 28,
                          height: 28,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(14),
                            color: Color(0xFFFFC6C9),
                          ),
                          child: IconButton(
                            onPressed: () {},
                            icon: SvgPicture.asset(
                              "assets/svg/main.svg",
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
              bottom: PreferredSize(
                preferredSize: Size(356, 125),
                child: Column(
                  spacing: 10,
                  children: [
                    SizedBox(
                      width: 356,
                      height: 83,
                      child: Column(
                        spacing: 5,
                        children: [
                          Row(
                            spacing: 5,
                            children: [
                              ProfileShareEdit(title: "Edit Profile"),
                              ProfileShareEdit(title: "Share Profile"),
                            ],
                          ),
                          Following(viewModel: viewModel)
                        ],
                      ),
                    ),
                    TabBar(
                      indicatorColor: Color(0xFFFD5D69),
                      indicatorSize: TabBarIndicatorSize.tab,
                      tabs: [
                        Text(
                          "Recipes",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Text(
                          "Favorites",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            extendBody: true,
            body: TabBarView(
              children: [
                GridView(
                  padding: EdgeInsets.all(8),
                  shrinkWrap: true,
                  gridDelegate:
                  const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 60,
                  ),
                  children: [
                    CategoryItem(
                      image: "assets/images/shramp.png",
                      title: "Cripsy Shrimp",
                      desc: "A feast for the senses",
                      rating: "4",
                      duration: "20min",
                    ),
                    CategoryItem(
                      image: "assets/images/lunch.png",
                      title: "Chicken Wings",
                      desc: "Delicious and juicy wings",
                      rating: "5",
                      duration: "30min",
                    ),
                    CategoryItem(
                      image: "assets/images/dessert.png",
                      title: "Colros Macarons ",
                      desc: "Sweet bites full of elegance",
                      rating: "4",
                      duration: "40min",
                    ),
                    CategoryItem(
                      image: "assets/images/colada.png",
                      title: "Pina Colada",
                      desc: "a tropical explosion in every sip",
                      rating: "4",
                      duration: "30min",
                    ),
                    CategoryItem(
                      image: "assets/images/rolls.png",
                      title: "Spring Rolls",
                      desc: "Delicate abd full of flavor",
                      rating: "4",
                      duration: "30min",
                    ),
                    CategoryItem(
                      image: "assets/images/french_toast.png",
                      title: "French Toast",
                      desc: "Delicious slices of bread",
                      rating: "4",
                      duration: "30min",
                    ),
                  ],
                ),
                ListView(
                  padding: EdgeInsets.all(8),
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  children: [
                    FavoritesItem(
                        title: "Sweet", image: "assets/images/cake.png"),
                    SizedBox(height: 50),
                    FavoritesItem(
                        title: "Salty", image: "assets/images/breakfast.png"),
                    SizedBox(height: 50),
                    ElevatedButton(
                        onPressed: () {},
                        style: ButtonStyle(
                          backgroundColor: WidgetStateProperty.all(
                            Color(0xFF1C0F0D),
                          ),
                        ),
                        child:
                        ProfileShareEdit(title: "+ Create Collection")),
                  ],
                ),
              ],
            ),
            bottomNavigationBar: Padding(
              padding: EdgeInsets.all(8.0),
              child: BottomNavBar2(),
            ),
          ),
        },
      ),
    );
  }
}