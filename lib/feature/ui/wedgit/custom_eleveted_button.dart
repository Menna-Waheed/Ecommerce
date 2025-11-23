import 'package:ecommerce/core/utils/app_color.dart';
import 'package:ecommerce/core/utils/app_style.dart';
import 'package:flutter/material.dart';

class CustomElevetedButton extends StatelessWidget {
  CustomElevetedButton({
    super.key,
    required this.onPressed,
    this.isIcon = false,
    this.radiousBoarder = 15,
    this.backgroundColor,
    this.iconName,
    required this.text,
    this.style,
    this.mainAxisAlignment,
  });

  void Function()? onPressed;
  bool isIcon;
  double radiousBoarder;
  Color? backgroundColor = AppColor.blueColor;
  final Widget? iconName;
  String text;
  TextStyle? style = AppTextStyle.semiBold20blue;
  MainAxisAlignment? mainAxisAlignment = MainAxisAlignment.center;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.circular(radiousBoarder),
        ),
        elevation: 0,
        backgroundColor: backgroundColor,
      ),
      onPressed: onPressed,
      child: isIcon
          ? Row(
              mainAxisAlignment: mainAxisAlignment ?? MainAxisAlignment.start,
              children: [
                iconName ?? SizedBox(),
                Text(text, style: style),
              ],
            )
          : Text(text, style: style),
    );
  }
}
