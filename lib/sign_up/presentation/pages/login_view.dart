import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:recipe_app/core/core.dart';
import 'package:recipe_app/profiles/presentation/widgets/recipe_elevated_button.dart';
import 'package:recipe_app/sign_up/presentation/widgets/text_form_login_view.dart';
import 'package:recipe_app/sign_up/presentation/widgets/login_sign_view_password_form_field.dart';
import 'package:recipe_app/sign_up/presentation/widgets/login_sign_view_text.dart';
import 'package:recipe_app/sign_up/presentation/widgets/login_sign_view_text_form_field.dart';
import 'package:recipe_app/sign_up/presentation/widgets/view_app_bar.dart';

class LoginView extends StatelessWidget {
  LoginView({super.key});

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.beigeColor,
      appBar: ViewAppBar(title: 'Login'),
      body: ListView(
        padding: EdgeInsets.only(top: 150, left: 30, right: 30),
        children: [
          Form(
            key: _formKey,
            child: Column(
              spacing: 10,
              children: [
                LoginSignViewTextFormField(
                  title: "Login",
                  hintText: "example@gmail.com",
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Please enter your email";
                    }
                    return null;
                  },
                  controller: emailController,
                ),
                LoginSignViewPasswordFormField(
                  title: 'Password',
                  controller: passwordController,
                ),
                SizedBox(
                  height: 90,
                ),
                RecipeElevatedButton(
                  text: 'Login',
                  callBack: () {},
                  size: Size(207, 45),
                ),
                SizedBox(
                  height: 27,
                ),
                RecipeElevatedButton(
                  text: "Sign up",
                  callBack: () {
                    context.go('/sign_up');
                  },
                  size: Size(207, 45),
                ),
                SizedBox(
                  height: 50,
                ),
                TextFormLoginView(title: 'Forgot Password?',),
                SizedBox(
                  height: 50,
                ),
                LoginSignViewText(
                  text: 'or sign up with',
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
                LoginSignViewText(text: 'Don’t have an account? Sign Up')
              ],
            ),
          ),
        ],
      ),
    );
  }
}
