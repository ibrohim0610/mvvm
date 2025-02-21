import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:recipe_app/core/core.dart';
import 'package:recipe_app/features/sign_up/data/repositories/sign_repository.dart';
import 'package:recipe_app/features/sign_up/presentation/widgets/login_view_form.dart';

import '../manager/sign_view_model.dart';

import '../widgets/view_app_bar.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => SignViewModel(repo: context.read<AuthRepository>()),
      builder: (context, child) {
        final viewModel = context.watch<SignViewModel>();
        return Scaffold(
          backgroundColor: AppColors.beigeColor,
          appBar: ViewAppBar(title: 'Login'),
          body: ListView(
            padding: EdgeInsets.only(top: 150, left: 30, right: 30),
            children: [
              LoginViewForm(),
            ],
          ),
        );
      },
    );
  }
}
