import 'package:ecommerce/core/utils/app_color.dart';
import 'package:ecommerce/core/utils/app_style.dart';
import 'package:flutter/material.dart';

class CustomeTextFormField extends StatelessWidget {
  CustomeTextFormField({
    super.key,
    this.validator,
    this.controller,
    this.obscureText = false,
    required this.boarderColor,
    this.rediusBoarder = 15,
    required this.hint_text,
    this.hint_style,
    this.prefixIcon,
    this.suffixIcon,
  });

  String? Function(String?)? validator;
  TextEditingController? controller;
  bool obscureText;
  Color boarderColor;
  double rediusBoarder;
  String hint_text;
  TextStyle? hint_style = AppTextStyle.light18gray;
  Widget? suffixIcon;
  Widget? prefixIcon;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        suffixIcon: suffixIcon,
        prefixIcon: prefixIcon,
        hintStyle: hint_style,
        hintText: hint_text,

        errorBorder: customOutlineInputBorder(
          boarderColor: AppColor.redColor,
          rediusBoarder: rediusBoarder,
        ),
        enabledBorder: customOutlineInputBorder(
          boarderColor: AppColor.transparentferColor,
          rediusBoarder: rediusBoarder,
        ),
        focusedErrorBorder: customOutlineInputBorder(
          boarderColor: AppColor.redColor,
          rediusBoarder: rediusBoarder,
        ),
        focusedBorder: customOutlineInputBorder(
          boarderColor: AppColor.blueColor,
          rediusBoarder: rediusBoarder,
        ),
      ),
      validator: validator,
      controller: controller,
      obscureText: obscureText,
      style: AppTextStyle.semiBold16black,
    );
  }

  OutlineInputBorder customOutlineInputBorder({
    required Color boarderColor,
    required double rediusBoarder,
  }) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(rediusBoarder),
      borderSide: BorderSide(color: boarderColor, width: 2),
    );
  }
}
