import 'package:calliverse/app/Screens/Auth/PhoneVerifyScreen/phoneverify_controller.dart';
import 'package:calliverse/app/core/theme/app_colors.dart';
import 'package:calliverse/app/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PhoneverifyView extends GetView<PhoneverifyController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.plainwhite,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assets/logo/app_logo_dark.png"),

              /// Title
              Text(
                "Enter Code",
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ),

              SizedBox(height: Get.height * 0.02),

              Text(
                "We have sent you an SMS with the code to +62 1309 - 1710 - 1920",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.grey),
              ),

              SizedBox(height: Get.height * 0.04),

              /// OTP Fields
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: List.generate(4, (index) {
                  return _otpBox(index);
                }),
              ),

              SizedBox(height: 40),
              CustomButton(title: "Veryfy OTP", onTap: controller.verifyOtp),

              SizedBox(height: Get.height * 0.02),

              /// Resend
              TextButton(
                onPressed: () {
                  Get.snackbar("Resend", "OTP Sent Again 📩");
                },
                child: Text(
                  "Resend OTP,",
                  style: TextStyle(
                    color: AppColors.primary,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// OTP BOX WIDGET
  Widget _otpBox(int index) {
    return SizedBox(
      width: 60,
      height: 60,
      child: TextField(
        keyboardType: TextInputType.number,
        maxLength: 1,
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        decoration: InputDecoration(
          counterText: "",
          filled: true,
          fillColor: Colors.white,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide(color: AppColors.primary, width: 2),
          ),
        ),
        onChanged: (value) {
          if (value.isNotEmpty) {
            controller.otp.value = controller.otp.value + value;

            if (index < 3) {
              FocusScope.of(Get.context!).nextFocus();
            }
          }
        },
      ),
    );
  }
}
