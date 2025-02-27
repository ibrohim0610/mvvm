import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:recipe_app/core/routing/routes.dart';
import 'package:recipe_app/features/sign_up/presentation/widgets/login_sign_view_password_form_field.dart';
import 'package:recipe_app/features/sign_up/presentation/widgets/login_sign_view_text_form_field.dart';
import 'package:recipe_app/features/sign_up/presentation/widgets/view_app_bar.dart';
import '../../../../core/l10n/app_localizations.dart';
import '../../../../core/utils/colors.dart';
import '../manager/sign_up_view_model.dart';
import '../widgets/Recipe_date_of_birth_form_field.dart';
import '../widgets/login_sign_view_text.dart';
import '../widgets/text_form_login_view.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<SignUpViewModel>(
      create: (context) => SignUpViewModel(
        authRepo: context.read(),
      ),
      builder: (context, child) {
        return Scaffold(
          backgroundColor: AppColors.beigeColor,
          appBar: ViewAppBar(title: MyLocalizations.of(context)!.signUp),
          body: ListView(
            children: [
              SizedBox(height: 20),
              Form(
                key:context.read<SignUpViewModel>().formKey,
                child: Column(
                  spacing: 10,
                  children: [
                    LoginSignViewTextFormField(
                      title: MyLocalizations.of(context)!.fullName,
                      hintText: "Ibrohim",
                      validator: (value) => null,
                      controller:context.read<SignUpViewModel>().firstNameController,
                    ),
                    LoginSignViewTextFormField(
                      title: MyLocalizations.of(context)!.lastName,
                      hintText: "Qo'ldoshev",
                      validator: (value) => null,
                      controller: context.read<SignUpViewModel>().lastNameController,
                    ),
                    LoginSignViewTextFormField(
                      title: MyLocalizations.of(context)!.userName,
                      hintText: "chef-ibrohim",
                      validator: (value) => null,
                      controller:context.read<SignUpViewModel>().usernameController,
                    ),
                    LoginSignViewTextFormField(
                      title: MyLocalizations.of(context)!.email,
                      hintText: "example@example.com",
                      validator: (value) => null,
                      controller:context.read<SignUpViewModel>().emailController,
                    ),
                    LoginSignViewTextFormField(
                      title: MyLocalizations.of(context)!.mobileNumber,
                      hintText: "+99899 999 99 99",
                      validator: (value) => null,
                      controller: context.read<SignUpViewModel>().numberController,
                    ),
                    RecipeDateOfBirthFormField(title: MyLocalizations.of(context)!.dateOfBirth),
                    LoginSignViewPasswordFormField(
                      controller: context.read<SignUpViewModel>().passwordController,
                      title: MyLocalizations.of(context)!.password,
                      validator: (value) => null,
                    ),
                    LoginSignViewPasswordFormField(
                      controller:context.read<SignUpViewModel>().confirmPasswordController,
                      title: MyLocalizations.of(context)!.confirmPassword,
                      validator: (value) {
                        if (context.read<SignUpViewModel>().passwordController.text != context.read<SignUpViewModel>().confirmPasswordController.text) {
                          return "Passwords do not match!";
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: 20,),
                    Text(MyLocalizations.of(context)!.by,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    TextFormLoginView(
                        title: MyLocalizations.of(context)!.terms,),
                    SizedBox(
                      width: 194,
                        height: 45,
                        child: ElevatedButton(onPressed: (){
                          context.read<SignUpViewModel>().formKey.currentState!.validate();
                          showDialog(context: context, builder: (context)=>
                              SimpleDialog(
                                children: [
                                  Container(
                                    padding: EdgeInsets.only(top: 23,right: 36,left: 36,bottom: 20),
                                    width: 250,
                                    height: 286,
                                    child: Column(
                                      children: [
                                        Text('Sign Up ',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 20,
                                              fontWeight: FontWeight.w600
                                          ),
                                        ),
                                        Text(  'Succesful',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 20,
                                              fontWeight: FontWeight.w600
                                          ),
                                        ),
                                        Container(
                                          width: 82,
                                          height: 82,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(41),
                                            color: AppColors.pink,

                                          ),
                                          child: Center(
                                            child: SvgPicture.asset('assets/svg/human.svg',
                                              width: 30,
                                              height: 44,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                        SizedBox(height: 10,),
                                        Text("Lorem ipsum dolor sit amet "
                                            "pretium cras id dui"
                                            " pellentesque ornare."
                                            " Quisque malesuada.",
                                          softWrap: true,
                                          maxLines: 4,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 13
                                          ),
                                        ),
                                        SizedBox(height: 5,),
                                        SizedBox(
                                          width: 100,
                                          height: 30,
                                          child: ElevatedButton(onPressed: (){
                                            context.go(Routes.completeProfile);
                                          },
                                              style: ElevatedButton.styleFrom(
                                                backgroundColor: AppColors.redPinkMain
                                              ),
                                              child: Text("Ok",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 15,
                                            fontWeight: FontWeight.w500,
                                          ),
                                          )
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                          );
                        },
                            style: ElevatedButton.styleFrom(
                          backgroundColor: AppColors.redPinkMain
                        ),
                            child: Text(MyLocalizations.of(context)!.signUpButton,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 15,
                                  fontFamily: 'Poppins'
                              ),
                            ),
                        ),
                    ),
                    LoginSignViewText(
                        text: MyLocalizations.of(context)!.account,),
                    SizedBox(height: 20,)
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}