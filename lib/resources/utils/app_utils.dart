import 'dart:developer';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_templete/resources/values/app_colors.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import '../../widgets/app_text/app_text.dart';

class AppUtils {
  AppUtils._privateConstructor();

  // >>>>>>>>>>>>>>>>>>>>>> when show message bottom  <<<<<<<<<<<<<<<<<<<<<<

  // >>>>>>>>>>>>>>>>>>>>>> error message snack bar  <<<<<<<<<<<<<<<<<<<<<<
  static showError(String parameterValue) {
    Get.showSnackbar(
      GetSnackBar(
        backgroundColor: Colors.red,
        snackPosition: SnackPosition.TOP,
        animationDuration: const Duration(seconds: 2),
        duration: const Duration(seconds: 3),
        messageText: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const AppText(
                title: "Error!",
                style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 16.0,
                    fontWeight: FontWeight.w600,
                    color: AppColors.white)),
            AppText(
                title: parameterValue,
                style: const TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 14.0,
                    fontWeight: FontWeight.w500,
                    color: AppColors.white)),
          ],
        ),
      ),
    );
  }

  // >>>>>>>>>>>>>>>>>>>>>> success message <<<<<<<<<<<<<<<<<<<<<<

  static showSuccess(String parameterValue) {
    Get.showSnackbar(
      GetSnackBar(
        backgroundColor: Colors.green,
        snackPosition: SnackPosition.TOP,
        animationDuration: const Duration(seconds: 2),
        duration: const Duration(seconds: 3),
        messageText: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const AppText(
                title: "Success!",
                style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 16.0,
                    fontWeight: FontWeight.w600,
                    color: AppColors.white)),
            AppText(
                title: parameterValue,
                style: const TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 14.0,
                    fontWeight: FontWeight.w500,
                    color: AppColors.white)),
          ],
        ),
      ),
    );
  }

  // >>>>>>>>>>>>>>>>>>>>>> show message <<<<<<<<<<<<<<<<<<<<<<
  static showMessage(String parameterValue) {
    Get.showSnackbar(
      GetSnackBar(
        backgroundColor: Colors.green,
        snackPosition: SnackPosition.TOP,
        animationDuration: const Duration(seconds: 2),
        duration: const Duration(seconds: 3),
        messageText: AppText(
            title: parameterValue,
            maxLine: 5,
            textAlign: TextAlign.start,
            style: const TextStyle(
                fontFamily: 'Poppins',
                fontSize: 14.0,
                fontWeight: FontWeight.w500,
                color: AppColors.white)),
      ),
    );
  }

  ///////////////////// toast message ////////////////////////
  static showToastMessage({required dynamic value}){
    Fluttertoast.showToast(
        msg: value,
        toastLength: Toast.LENGTH_SHORT,  // or Toast.LENGTH_LONG
        gravity: ToastGravity.BOTTOM,     // Position: TOP, CENTER, BOTTOM
        timeInSecForIosWeb: 2,            // Duration in seconds for iOS & Web
        backgroundColor: Colors.black54,  // Background color
        textColor: Colors.white,          // Text color
        fontSize: 12.0                    // Font size
    );
  }

  static void appLog(dynamic value) {
    try {
      if (kDebugMode) {
        log(""""
         😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊
         $value
         😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊
        """);
      }
    } catch (e) {
      log("error form AppLog: $e");
    }
  }

  static void appError(dynamic value, {String title = "error from"}) {
    try {
      if (kDebugMode) {
        log(""""
        😡😡😡😡😡😡😡😡😡😡😡😡😡😡😡😡😡😡😡😡😡😡😡😡😡😡😡😡😡😡😡😡😡😡😡😡😡😡😡😡😡😡
        $title >>>>>>>>>>>>>> $value
        😡😡😡😡😡😡😡😡😡😡😡😡😡😡😡😡😡😡😡😡😡😡😡😡😡😡😡😡😡😡😡😡😡😡😡😡😡😡😡😡😡😡
        """);
      }
    } catch (e) {
      log("error form AppLog: $e");
    }
  }
}