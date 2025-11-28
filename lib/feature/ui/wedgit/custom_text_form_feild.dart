import 'package:ecommerce/core/utils/app_color.dart';
import 'package:ecommerce/core/utils/app_style.dart';
import 'package:flutter/material.dart';

typedef OnValidator = String? Function(String?)?;

class CustomeTextFormField extends StatelessWidget {
  CustomeTextFormField({
    super.key,
    this.validator,
    this.controller,
    this.obscureText = false,
    this.boarderColor,
    this.rediusBoarder = 15,
    required this.hint_text,
    this.hint_style,
    this.prefixIcon,
    this.suffixIcon,
  });

  String? Function(String?)? validator;
  TextEditingController? controller;
  bool obscureText;
  Color? boarderColor;
  double rediusBoarder;
  String hint_text;
  TextStyle? hint_style;
  Widget? suffixIcon;
  Widget? prefixIcon;

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Padding(
      padding: EdgeInsets.only(bottom: height * 0.02, top: height * 0.01),
      child: TextFormField(
        decoration: InputDecoration(
          suffixIcon: suffixIcon,
          prefixIcon: prefixIcon,
          hintStyle: hint_style ?? AppTextStyle.light18white,
          hintText: hint_text,

          errorBorder: customOutlineInputBorder(
            boarderColor: AppColor.redColor,
            rediusBoarder: rediusBoarder,
          ),
          enabledBorder: customOutlineInputBorder(
            boarderColor: boarderColor ?? AppColor.whiteColor,
            rediusBoarder: rediusBoarder,
          ),
          focusedErrorBorder: customOutlineInputBorder(
            boarderColor: AppColor.redColor,
            rediusBoarder: rediusBoarder,
          ),
          focusedBorder: customOutlineInputBorder(
            boarderColor: boarderColor ?? AppColor.whiteColor,
            rediusBoarder: rediusBoarder,
          ),
        ),
        validator: validator,
        controller: controller,
        obscureText: obscureText,
        style: AppTextStyle.Regular18White,
      ),
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
