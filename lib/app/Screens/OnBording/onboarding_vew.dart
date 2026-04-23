import 'package:calliverse/app/core/theme/app_colors.dart';
import 'package:calliverse/app/core/widgets/custom_button.dart';
import 'package:calliverse/app/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';
import 'package:get/route_manager.dart';

class OnboardingVew extends StatelessWidget {
  const OnboardingVew({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: SafeArea(
        child: SingleChildScrollView(
          child: ConstrainedBox(
            constraints: BoxConstraints(
              // minHeight: MediaQuery.of(context).size.height,
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: [
                  SizedBox(height: Get.height * 0.05),

                  /// Illustration
                  Image.asset(
                    'assets/logo/Illustration.png',
                    height: Get.height * 0.3, // ✅ responsive
                    fit: BoxFit.contain,
                  ),

                  SizedBox(height: Get.height * 0.03),

                  /// Title
                  Text(
                    "Connect easily with your family and friends over countries"
                        .tr,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: TextColors.neutral,
                      height: 1.4,
                    ),
                  ),

                  SizedBox(height: Get.height * 0.18),

                  /// Terms
                  Text(
                    "Terms & Privacy Policy".tr,
                    style: TextStyle(color: Colors.grey.shade600, fontSize: 13),
                  ),

                  SizedBox(height: Get.height * 0.02),

                  /// Email Button
                  CustomButton(
                    title: "Continue with email".tr,
                    color: AppColors.primary,
                    onTap: () => Get.toNamed(Routes.EMAILSIGNUP),
                  ),

                  SizedBox(height: Get.height * 0.02),

                  /// Phone Button
                  CustomButton(
                    title: "Continue with phone".tr,
                    color: AppColors.primarydarken,
                    onTap: () {
                      Get.toNamed(Routes.PHONESIGNUP);
                    },
                  ),

                  SizedBox(height: Get.height * 0.02),

                  /// Login
                  GestureDetector(
                    onTap: () {
                      Get.toNamed(Routes.LOGIN);
                    },
                    child: Text(
                      "login".tr,
                      style: TextStyle(
                        color: AppColors.primary,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),

                  // SizedBox(height: height * 0.03),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
