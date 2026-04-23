import 'package:calliverse/app/Screens/Auth/PhoneSignUpScreen/phonesignup_controller.dart';
import 'package:calliverse/app/core/theme/app_colors.dart';
import 'package:calliverse/app/core/widgets/buildTextField.dart';
import 'package:calliverse/app/core/widgets/custom_button.dart';
import 'package:calliverse/app/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';

class PhonesignupView extends GetView<PhonesignupController> {
  const PhonesignupView({super.key});

  @override
  Widget build(BuildContext context) {
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
                    "Sign up with phone number".tr,
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
                    "Please confirm your country code and enter your phone number."
                        .tr,
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 14, color: TextColors.neutral),
                  ),

                  SizedBox(height: Get.height * 0.08),

                  /// 🌍 Country Dropdown
                  Obx(
                    () => Container(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      decoration: BoxDecoration(
                        color: const Color(0xFFEDEDED),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: DropdownButton<Country>(
                        value: controller.selectedCountry.value,
                        isExpanded: true,
                        underline: const SizedBox(),
                        items: controller.countries
                            .map(
                              (country) => DropdownMenuItem<Country>(
                                value: country,
                                child: Row(
                                  children: [
                                    Text(
                                      country.flagEmoji,
                                      style: const TextStyle(fontSize: 24),
                                    ),
                                    const SizedBox(width: 12),
                                    Expanded(
                                      child: Text(
                                        country.name,
                                        style: const TextStyle(
                                          fontSize: 14,
                                          color: Colors.black87,
                                        ),
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                    const SizedBox(width: 8),
                                    Text(
                                      country.countryCode,
                                      style: const TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.black54,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            )
                            .toList(),
                        onChanged: (Country? newValue) {
                          if (newValue != null) {
                            controller.selectedCountry.value = newValue;
                          }
                        },
                      ),
                    ),
                  ),
                  SizedBox(height: Get.height * 0.04),

                  /// 📱 Phone Number
                  CustomTextField(hint: "Phone Number"),
                  SizedBox(height: Get.height * 0.02),
                  CustomTextField(isPassword: true, hint: 'Password'),
                  SizedBox(height: Get.height * 0.02),
                  CustomTextField(hint: "Confirm Password", isPassword: true),
                  SizedBox(height: Get.height * 0.06),
                  CustomButton(
                    title: "Continue",
                    onTap: () {
                      Get.toNamed(Routes.PHONEVERIFY);
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
