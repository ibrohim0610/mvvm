
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:recipe_app/core/l10n/app_localizations.dart';
import '../../../../core/routing/routes.dart';
import '../../../../core/presentation/widgets/recipe_elevated_button.dart';
import '../manager/login_view_model.dart';
import 'login_sign_view_password_form_field.dart';
import 'login_sign_view_text.dart';
import 'login_sign_view_text_form_field.dart';
import 'text_form_login_view.dart';

class LoginViewForm extends StatelessWidget {
  const LoginViewForm({
    super.key,

  });



  @override
  Widget build(BuildContext context) {
    final viewModel = context.read<LoginViewModel>();
    return Form(
      key: viewModel.formKey,
      child: Column(
        spacing: 10,
        children: [
          LoginSignViewTextFormField(
            title: MyLocalizations.of(context)!.login,
            hintText: "example@gmail.com",
            validator: (value) => null,
            controller: viewModel.loginController,
          ),
          LoginSignViewPasswordFormField(
            title: MyLocalizations.of(context)!.password,
            controller: viewModel.passwordController, validator: (value) => null,
          ),
          if (viewModel.hasError)
            Text(
              viewModel.errorMessage!,
              style: TextStyle(
                color: Theme.of(context).colorScheme.error,
              ),
            ),
          SizedBox(
            height: 90,
          ),
          RecipeElevatedButton(
            text: MyLocalizations.of(context)!.login,
            callback: () async{
              if (viewModel.formKey.currentState!.validate()) {
                if (await viewModel.login() && context.mounted) {
                  context.go(Routes.categories);
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text("Banzaaay!"),
                    ),
                  );
                }}
            },
            size: Size(207, 45),
          ),
          SizedBox(
            height: 27,
          ),
          RecipeElevatedButton(
            text: MyLocalizations.of(context)!.signUpButton,
            callback: () {
              context.go(Routes.signup);
            },
            size: Size(207, 45),
          ),
          SizedBox(
            height: 50,
          ),
          TextFormLoginView(title: MyLocalizations.of(context)!.forgot,),
          SizedBox(
            height: 50,
          ),
          LoginSignViewText(
            text: MyLocalizations.of(context)!.or,
          ),
          Row(
            spacing: 5,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                'assets/svg/insta.svg',
                width: 25,
                height: 27,
                fit: BoxFit.cover,
              ),
              SvgPicture.asset(
                'assets/svg/google.svg',
                width: 25,
                height: 27,
                fit: BoxFit.cover,
              ),
              SvgPicture.asset(
                'assets/svg/facebook.svg',
                width: 25,
                height: 27,
                fit: BoxFit.cover,
              ),
              SvgPicture.asset(
                'assets/svg/telefon.svg',
                width: 25,
                height: 27,
                fit: BoxFit.cover,
              ),
            ],
          ),
          LoginSignViewText(text: MyLocalizations.of(context)!.an)
        ],
      ),
    );
  }
}