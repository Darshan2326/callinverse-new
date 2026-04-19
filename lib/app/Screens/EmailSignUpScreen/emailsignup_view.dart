import 'package:calliverse/app/core/theme/app_colors.dart';
import 'package:calliverse/app/core/widgets/buildTextField.dart';
import 'package:calliverse/app/core/widgets/custom_button.dart';
import 'package:calliverse/app/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';

class EmailsignupView extends StatelessWidget {
  const EmailsignupView({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5), // light gray background
      body: SafeArea(
        child: SingleChildScrollView(
          keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
          child: ConstrainedBox(
            constraints: BoxConstraints(),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // SizedBox(height: height * 0.01),
                  SizedBox(height: Get.height * 0.01),

                  /// 🔙 Back Button
                  Align(
                    alignment: Alignment.centerLeft,
                    child: IconButton(
                      icon: const Icon(Icons.arrow_back_ios_new),
                      onPressed: () {},
                    ),
                  ),

                  SizedBox(height: Get.height * 0.05),

                  /// 📝 Title
                  Text(
                    "Sign up with email".tr,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: TextColors.neutral,
                    ),
                  ),

                  SizedBox(height: Get.height * 0.01),

                  /// 📄 Subtitle
                  Text(
                    "Please create your account using your email.".tr,
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 14, color: TextColors.neutral),
                  ),

                  SizedBox(height: Get.height * 0.08),
                  CustomTextField(
                    hint: "Email",
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Email required";
                      }
                      if (!value.contains("@")) {
                        return "Invalid email";
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: Get.height * 0.02),
                  CustomTextField(isPassword: true, hint: 'Password'),
                  SizedBox(height: Get.height * 0.02),
                  CustomTextField(hint: "Confirm Password", isPassword: true),
                  SizedBox(height: Get.height * 0.06),
                  CustomButton(
                    title: "Continue",
                    onTap: () {
                      Get.toNamed(Routes.EMAILVERIFY);
                    },
                  ),

                  // const SizedBox(height: 20),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
