import 'package:ecommerce/core/utils/app_color.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ToestUtils {
  static Future<bool?> toastMessage({required String message}) {
    return Fluttertoast.showToast(
      msg: message,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 1,
      backgroundColor: AppColor.blueColor,
      textColor: AppColor.whiteColor,
      fontSize: 20,
    );
  }
}
