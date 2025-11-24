import 'package:ecommerce/core/utils/app_asset.dart';
import 'package:ecommerce/core/utils/app_color.dart';
import 'package:ecommerce/core/utils/app_route.dart';
import 'package:ecommerce/core/utils/app_style.dart';
import 'package:ecommerce/feature/ui/wedgit/custom_eleveted_button.dart';
import 'package:ecommerce/feature/ui/wedgit/custom_text_form_feild.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool obsecure = true;

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery
        .of(context)
        .size
        .width;
    var height = MediaQuery
        .of(context)
        .size
        .height;
    return Scaffold(
      backgroundColor: AppColor.blueColor,
      body: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: width * 0.04
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Image.asset(AppAssets.splashIcon),
              Text('Welcome Back To Shopping',
                style: AppTextStyle.semiBold24White,),
              Text('Please sign in with your mail',
                style: AppTextStyle.light16White,),
              SizedBox(height: height * 0.02,),
              Text('User Name', style: AppTextStyle.Regular18White,),
              CustomeTextFormField(hint_text: 'enter your name',),
              Text('password', style: AppTextStyle.Regular18White,),
              CustomeTextFormField(
                hint_text: 'enter your password', obscureText: obsecure,
                suffixIcon: GestureDetector(
                    onTap: () {
                      obsecure = !obsecure;
                      setState(() {

                      });
                    },
                    child: obsecure ? Icon(Icons.visibility_off) : Icon(
                        Icons.visibility)),),
              Text('Forgot password', style: AppTextStyle.Regular18White,
                textAlign: TextAlign.end,),
              SizedBox(height: height * 0.02,),
              CustomElevetedButton(
                onPressed: () {
                  //todo navegatoir home screen

                },
                text: 'Login',
                style: AppTextStyle.semiBold20blue,
                radiousBoarder: 15,),
              SizedBox(height: height * 0.02,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Don’t have an account?',
                    style: AppTextStyle.medium18White,),
                  TextButton(
                      onPressed: () {
                        //todo navegator to register screen
                        Navigator.pushNamed(context, AppRoute.registerScreen);
                      },
                      child: Text(
                        'Create Account', style: AppTextStyle.medium18White,)),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
