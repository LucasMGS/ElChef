import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ElChefToast {
  static void showToast(String message, bool isSuccess) {
    Fluttertoast.showToast(
      msg: message,
      gravity: ToastGravity.BOTTOM_LEFT,
      backgroundColor: isSuccess ? Colors.green : Colors.red,
      textColor: Colors.white,
    );
  }

  static void showCustomizedToast(
    String message,
    Toast? toastLength,
    double? fontSize,
    ToastGravity? toastGrativity,
    Color? bgColor,
    Color? textColor,
  ) {
    Fluttertoast.showToast(
      msg: message,
      gravity: ToastGravity.BOTTOM_LEFT,
      backgroundColor: bgColor,
      textColor: textColor,
      toastLength: toastLength,
      fontSize: fontSize,
    );
  }
}
