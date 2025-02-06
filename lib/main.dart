// import 'package:flutter/material.dart';
// import 'package:go_router/go_router.dart';
// import 'package:mvvm/categories/data/models/category_model.dart';
// import 'package:mvvm/categories/data/repositories/categories_repository.dart';
// import 'package:mvvm/categories/presentation/pages/categories_view.dart';
// import 'package:mvvm/categories/presentation/pages/categories_view_model.dart';
// import 'package:mvvm/categories_profile/data/repositories/profile_repository.dart';
// import 'package:mvvm/category_detail/data/repositories/category_detail_repository.dart';
// import 'package:mvvm/category_detail/presentation/pages/category_detail_view.dart';
// import 'package:mvvm/category_detail/presentation/pages/category_detail_view_model.dart';
// import 'package:mvvm/core/client.dart';
// import 'package:provider/provider.dart';
//
// GoRouter router = GoRouter(
//   initialLocation: '/categories',
//     routes: [
//       GoRoute(path: '/categories', builder: (context, state)=>
//       CategoriesView(viedModel: CategoriesViewModel(repo: context.read())),
//       ),
//       GoRoute(
//           path: '/categories/detail',
//           builder: (context , state) => CategoryDetailView(
//               viewModel: CategoryDetailViewModel(
//                 catsRepo: context.read(),
//                 repo: context.read(),
//                 selected: state.extra as CategoryModel,
//
//               ),
//           ),
//       ),
//     ],
// );
//
//
// void main(){
//   runApp(MultiProvider(
//       providers: [
//         Provider(create: (context) => ApiClient()),
//         Provider(create: (context)=> CategoriesRepository(client: context.read())),
//         Provider(create: (context)=> CategoryDetailRepository(client: context.read()),),
//         Provider(create: (context)=> ProfileRepository(client: context.read()),)
//       ],
//       child: const MvvmApp()));
//
// }
// class MvvmApp extends StatelessWidget {
//   const MvvmApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp.router(
//      routerConfig: router,
//     );
//   }
// }
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mvvm/categories_profile/data/repositories/profile_repository.dart';
import 'package:mvvm/categories_profile/presentation/pages/profile_view.dart';
import 'package:mvvm/categories_profile/presentation/pages/profile_view_model.dart';
import 'package:mvvm/core/client.dart';

void main() => runApp(const RecipeApp());
class RecipeApp extends StatelessWidget {
  const RecipeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ProfileView(viewModel: ProfileViewModel(repo: ProfileRepository(client: ApiClient()))),
    );
  }
}
