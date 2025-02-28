import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:recipe_app/core/core.dart';
import 'package:recipe_app/features/profiles/presentation/pages/profile_page_content_align.dart';
import 'package:recipe_app/features/profiles/presentation/pages/profile_share_edit.dart';
import '../../data/repositories/my_profile_repository.dart';
import '../widgets/my_profile_page_app_bar.dart';
import '../widgets/profile_item.dart';
import 'favorites_item.dart';
import 'my_profile_view_model.dart';

class ProfilePageView extends StatelessWidget {
  const ProfilePageView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<MyProfileViewModel>(
      create: (context) => MyProfileViewModel(
        myProfileRepo: MyProfileRepository(client: ApiClient()),
      ),
      child: ProfilePageContent(),
    );
  }
}

class ProfilePageContent extends StatelessWidget {
  const ProfilePageContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var vm = context.watch<MyProfileViewModel>();
    return switch (vm.loading) {
      true => Center(child: CircularProgressIndicator()),
      false => DefaultTabController(
          length: 2,
          child: Scaffold(
            extendBody: true,
            backgroundColor: AppColors.beigeColor,
            appBar: MyProfilePageAppBar(),
            body: TabBarView(children: [
              GridView.builder(
                  padding: EdgeInsets.all(8),
                  shrinkWrap: true,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 60,
                  ),
                  itemCount: vm.recipe.length,
                  itemBuilder: (context, index) {
                    return ProfileItem(
                        image: vm.recipe[index].photo,
                        title: vm.recipe[index].title,
                        desc: vm.recipe[index].description,
                        rating: vm.recipe[index].rating,
                        duration: vm.recipe[index].timeRequired, id: vm.recipe[index].id,);
                  }),
              ListView(
                padding: EdgeInsets.all(8),
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                children: [
                  FavoritesItem(
                    image: 'assets/images/pancake.png',
                    title: 'Sweet',
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  FavoritesItem(
                    image: 'assets/images/breakfast.png',
                    title: 'salty',
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                        backgroundColor:
                            WidgetStateProperty.all(AppColors.beigeColor)),
                    child: ProfileShareEdit(
                      title: "+ Create Collection",
                    ),
                  )
                ],
              )
            ]),
            bottomNavigationBar: Padding(
              padding: EdgeInsets.all(8),
              child: ProfilePageContentAlign(),
            ),
          ),
        ),
    };
  }
}
