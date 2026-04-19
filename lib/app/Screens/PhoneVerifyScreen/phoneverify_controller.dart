import 'package:calliverse/app/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/state_manager.dart';

class PhoneverifyController extends GetxController {
  var otp = "".obs;

  void updateOtp(String value) {
    otp.value = value;
  }

  void verifyOtp() {
    if (otp.value.length == 4) {
      Get.snackbar(
        "Success",
        "OTP Verified Successfully 🎉",
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.green,
        colorText: Colors.white,
      );
      Get.toNamed(Routes.PROFILEACCOUNT);
    } else {
      Get.snackbar(
        "Error",
        "Enter valid 4-digit OTP",
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.red,
        colorText: Colors.white,
      );
    }
  }
}
