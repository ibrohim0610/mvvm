// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:go_router/go_router.dart';
// import 'package:provider/provider.dart';
// import 'package:recipe_app/categories/data/repositories/categories_repository.dart';
// import 'package:recipe_app/categories/presentation/pages/categories_view.dart';
// import 'package:recipe_app/categories/presentation/pages/categories_view_model.dart';
// import 'package:recipe_app/categories_detail/data/models/recipe_model_small.dart';
// import 'package:recipe_app/categories_detail/data/repositories/categories_detail_repository.dart';
// import 'package:recipe_app/categories_detail/presentation/pages/categories_detail.dart';
// import 'package:recipe_app/categories_detail/presentation/pages/categories_detail_view_model.dart';
// // import 'package:recipe_app/recipe_detail/data/repositories/recipe_detail_repository.dart';
// // import 'package:recipe_app/recipe_detail/presentation/pages/recipe_detail_view.dart';
// // import 'package:recipe_app/recipe_detail/presentation/pages/recipe_detail_view_model.dart';
//
// import 'categories/data/models/category_model.dart';
// import 'core/core.dart';
//
// void main() {
//   WidgetsFlutterBinding.ensureInitialized();
//   SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
//   runApp(RecipeApp());
// }
//
// GoRouter router = GoRouter(
//   initialLocation: '/categories',
//   routes: [
//     GoRoute(
//       path: '/categories',
//       builder: (context, state) => CategoriesView(
//         viewModel: CategoriesViewModel(repo: context.read()),
//       ),
//       routes: [
//         GoRoute(
//           path: '/detail',
//           builder: (context, state) => CategoriesDetailView(
//             viewModel: CategoriesDetailViewModel(
//               repo: context.read(),
//               catsRepo: context.read(),
//               selected: state.extra as CategoryModel,
//             ),
//           ),
//           routes: [
//
//           ],
//         ),
//       ],
//     ),
//   ],
// );
//
// class RecipeApp extends StatelessWidget {
//   const RecipeApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     AppSizes.init(context);
//     return MultiProvider(
//       providers: [
//         Provider(create: (context) => ApiClient()),
//         Provider(create: (context) => CategoriesRepository(client: context.read())),
//         Provider(create: (context) => CategoriesDetailRepository(client: context.read())),
//       ],
//       child: MaterialApp.router(
//         debugShowCheckedModeBanner: false,
//         theme: appThemeData,
//         routerConfig: router,
//       ),
//     );
//   }
// }


// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:recipe_app/core/client.dart';
// import 'package:recipe_app/profile/data/repositories/profile_repository.dart';
// import 'package:recipe_app/profile/presentation/pages/profile_view.dart';
// import 'package:recipe_app/profile/presentation/pages/profile_view_model.dart';
//
// void main() => runApp(const RecipeApp());
// class RecipeApp extends StatelessWidget {
//   const RecipeApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: ProfileView(viewModel: ProfileViewModel(repo: ProfileRepository(client: ApiClient()))),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:recipe_app/core/core.dart';
import 'package:recipe_app/onboarding/data/repositories/onboarding_repositories.dart';
import 'package:recipe_app/onboarding/presentation/manager/onboarding_view_model.dart';
import 'package:recipe_app/onboarding/presentation/pages/onboarding_view.dart';
import 'package:recipe_app/profiles/presentation/pages/profile_page_view.dart';
import 'package:recipe_app/profiles/data/repositories/my_profile_repository.dart';
import 'package:recipe_app/profiles/presentation/pages/my_profile_view_model.dart';

import 'categories/data/repositories/categories_repository.dart';
import 'categories/presentation/manager/categories_view_model.dart';
import 'categories/presentation/pages/categories_view.dart';
import 'core/sizes.dart';

void main() {
  runApp(ProfileApp());
}

class ProfileApp extends StatelessWidget {
  const ProfileApp({super.key});

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      theme: appTheme,
      home: CategoriesView(viewModel:CategoriesViewModel(repo: CategoriesRepository(client: ApiClient()
      )
      )
      )
    );
  }
}
class MyProfilePage extends StatelessWidget {
  const MyProfilePage({super.key, });



  @override
  Widget build(BuildContext context) {
    return ProfilePageView();
  }
}
