import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:recipe_app/core/core.dart';
import 'package:recipe_app/sign_up/presentation/widgets/login_sign_view_password_form_field.dart';
import 'package:recipe_app/sign_up/presentation/widgets/login_sign_view_text.dart';
import 'package:recipe_app/sign_up/presentation/widgets/login_sign_view_text_form_field.dart';
import 'package:recipe_app/sign_up/presentation/widgets/text_form_login_view.dart';
import 'package:recipe_app/sign_up/presentation/widgets/view_app_bar.dart';

class SignUpView extends StatelessWidget {
  SignUpView({super.key});

  final TextEditingController nameController = TextEditingController();
  final TextEditingController signEmailController = TextEditingController();
  final TextEditingController numberController = TextEditingController();
  final TextEditingController dateController = TextEditingController();
  final TextEditingController signPasswordController = TextEditingController();
  final TextEditingController confirmPasswordController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.beigeColor,
      appBar: ViewAppBar(title: 'Sign Up'),
      body: ListView(
        padding: EdgeInsets.only(top: 150,left: 30, right: 30),
        children: [
          Form(child:
          Column(
            spacing: 10,
            children: [
              LoginSignViewTextFormField(
                  title: 'Full Name',
                  hintText: 'John Doe',
                  validator: (value)=> null,
                  controller: nameController),
              LoginSignViewTextFormField(
                  title: 'Email',
                  hintText: "example@gmail.com",
                  validator: (value)=> null,
                  controller: signEmailController),
              LoginSignViewTextFormField(
                  title: 'Mobile Number',
                  hintText: '+998 88 484 25 06',
                  validator: (value)=> null,
                  controller: numberController),
              LoginSignViewTextFormField(
                  title: 'Date Of Birth',
                  hintText: 'DD/MM/YYY',
                  validator: (value)=> null,
                  controller: dateController),
              LoginSignViewPasswordFormField(controller: signPasswordController,
                  title: 'Password'),
              LoginSignViewPasswordFormField(controller: confirmPasswordController,
                  title: 'Confirm Password'),
              
              Text('By continuing, you agree to ',
              style: TextStyle(
                color: Colors.white,
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
              ),
              TextFormLoginView(
                  title: 'Terms of Use and Privacy Policy.'),
              SizedBox(
                width: 194,
                height: 45,
                child: ElevatedButton(
                    onPressed: (){
                  context.go('/login_go');
                },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.redPinkMain,
                    ),
                    child: Text('Sign Up',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                  fontSize: 15,
                  fontFamily: 'Poppins'
                ),)),
              ),
              LoginSignViewText(
                  text: 'Already have an account?  Log In')
            ],
          ))
        ],
      ),
    );
  }
}
