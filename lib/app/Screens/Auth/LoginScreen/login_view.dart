import 'package:calliverse/app/Screens/Auth/LoginScreen/login_controller.dart';
import 'package:calliverse/app/core/theme/app_colors.dart';
import 'package:calliverse/app/core/widgets/buildTextField.dart';
import 'package:calliverse/app/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginView extends GetView<LoginController> {
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
                "Welcome Back!",
                style: TextStyle(
                  color: TextColors.neutral,
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),

              SizedBox(height: Get.height * 0.01),

              Text(
                "Login to Continue",
                textAlign: TextAlign.center,
                style: TextStyle(color: TextColors.neutral),
              ),

              SizedBox(height: Get.height * 0.04),
              CustomTextField(hint: "Enter Your Email"),
              SizedBox(height: Get.height * 0.02),
              CustomTextField(hint: "Password", isPassword: true),

              SizedBox(height: 40),
              CustomButton(title: "Login", onTap: controller.HanfleLongin),

              SizedBox(height: Get.height * 0.02),
            ],
          ),
        ),
      ),
    );
  }
}
