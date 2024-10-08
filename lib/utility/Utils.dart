import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:get_mvvm/resource/color/appColors.dart';

class Utils {
  static void focusTextfield(
      BuildContext context, FocusNode current, FocusNode next) {
    current.unfocus();
    FocusScope.of(context).requestFocus(next);
  }

  static void flutterToast(String message) {
    Fluttertoast.showToast(
        msg: message,
        backgroundColor: Appcolors.blackColor,
        gravity: ToastGravity.CENTER);
  }

  static void customSnackbar(String title, String message) {
    Get.snackbar(title, message,
        backgroundColor: Appcolors.blackColor,
        colorText: Appcolors.whiteColor,
        isDismissible: true);
  }
}
