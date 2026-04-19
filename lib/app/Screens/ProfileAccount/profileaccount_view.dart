import 'package:calliverse/app/Screens/ProfileAccount/profileaccount_controller.dart';
import 'package:calliverse/app/core/widgets/buildTextField.dart';
import 'package:calliverse/app/core/widgets/custom_button.dart';
import 'package:calliverse/app/core/widgets/custome_appbar.dart';
import 'package:calliverse/app/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfileaccountView extends GetView<ProfileaccountController> {
  const ProfileaccountView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: CustomAppBar(title: "Your Profile"),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: Get.height * 0.03),

                /// 👤 Profile Image
                Center(
                  child: Stack(
                    children: [
                      GestureDetector(
                        onTap: () {
                          controller.pickImageFromGallery();
                        },
                        child: Obx(
                          () => Container(
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(
                              color: Colors.grey.shade200,
                              shape: BoxShape.circle,
                            ),
                            child: controller.profileImage.value != null
                                ? ClipOval(
                                    child: Image.file(
                                      controller.profileImage.value!,
                                      fit: BoxFit.cover,
                                    ),
                                  )
                                : Image.asset("assets/logo/person.png"),
                          ),
                        ),
                      ),

                      /// ➕ Add Button
                      Positioned(
                        bottom: 0,
                        right: 0,
                        child: Container(
                          height: 30,
                          width: 30,
                          decoration: const BoxDecoration(
                            color: Colors.black,
                            shape: BoxShape.circle,
                          ),
                          child: const Icon(
                            Icons.add,
                            size: 18,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 30),

                /// 🧾 Input Fields
                CustomTextField(hint: "First Name"),
                SizedBox(height: Get.height * 0.03),

                CustomTextField(hint: "Last Name"),
                SizedBox(height: Get.height * 0.03),

                CustomTextField(hint: "Bio (Optional)"),
                SizedBox(height: Get.height * 0.03),

                CustomTextField(hint: "Website Link (Optional)"),

                SizedBox(height: Get.height * 0.06),

                /// 💾 Save Button
                CustomButton(
                  title: "Save",
                  onTap: () {
                    Get.toNamed(Routes.HOME);
                  },
                ),

                SizedBox(height: Get.height * 0.02),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
