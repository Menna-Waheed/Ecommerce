import 'package:ecommerce/core/utils/app_color.dart';
import 'package:ecommerce/core/utils/app_style.dart';
import 'package:flutter/material.dart';

class DialogUtils {
  static void ShowLoading({
    required BuildContext context,
    required String message,
  }) {
    showDialog(
      barrierDismissible: false,
      context: context,
      builder: (context) {
        return Row(
          children: [
            CircularProgressIndicator(color: AppColor.blueColor),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(message, style: AppTextStyle.semiBold20blue),
            ),
          ],
        );
      },
    );
  }

  static void hideLoading({required BuildContext context}) {
    Navigator.pop(context);
  }
}
