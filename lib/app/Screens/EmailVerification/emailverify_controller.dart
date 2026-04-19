import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class EmailverifyController extends GetxController {
  var otp = ''.obs;

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
