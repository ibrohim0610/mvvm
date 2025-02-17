import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:recipe_app/auth_recipe/data/repositories/auth_repositories.dart';
import 'package:recipe_app/auth_recipe/presentation/manager/auth_view_model.dart';
import 'package:recipe_app/core/client.dart';
import 'package:recipe_app/sign_up/presentation/pages/login_view.dart';
import 'package:recipe_app/sign_up/presentation/pages/sign_up_view.dart';


GoRouter router =GoRouter
  (
  initialLocation: '/login_go',
    routes: [
    GoRoute(path: '/login_go',
    builder: (context , state)=> LoginView(
      viewModel: AuthViewModel(
          authRepository: AuthRepository(
              client: ApiClient()
          )
      ),
    ),
    ),
      GoRoute(path: '/sign_up',
      builder: (context, state)=> SignUpView()
      ),
]
);
void main(){
  runApp(MyApp());


}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: router,
    );
  }
}
