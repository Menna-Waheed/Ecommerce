import 'package:ecommerce/core/utils/app_asset.dart';
import 'package:ecommerce/core/utils/app_color.dart';
import 'package:ecommerce/core/utils/app_style.dart';
import 'package:ecommerce/feature/ui/wedgit/custom_eleveted_button.dart';
import 'package:ecommerce/feature/ui/wedgit/custom_text_form_feild.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
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
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: width * 0.03
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Image.asset(AppAssets.splashIcon),
              Text('Full Name', style: AppTextStyle.medium18White,),
              CustomeTextFormField(hint_text: 'enter your full name'),
              Text('Mobile Number', style: AppTextStyle.medium18White,),
              CustomeTextFormField(hint_text: 'enter your mobile no.'),
              Text('E-mail address', style: AppTextStyle.medium18White,),
              CustomeTextFormField(hint_text: 'enter your email address'),
              Text('Password', style: AppTextStyle.medium18White,),
              CustomeTextFormField(
                hint_text: 'enter your password', obscureText: obsecure,
                suffixIcon: GestureDetector(
                    onTap: () {
                      obsecure = !obsecure;
                      setState(() {

                      });
                    },
                    child: obsecure ? Icon(Icons.visibility_off) : Icon(
                        Icons.visibility)
                ),

              ),
              SizedBox(height: height * 0.02,),
              CustomElevetedButton(
                onPressed: () {
                  //todo navegator to login screen
                },
                text: 'Sign up', style: AppTextStyle.semiBold20blue,)
            ],
          ),
        ),
      ),
    );
  }
}
