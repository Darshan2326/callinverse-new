import 'package:calliverse/app/Screens/SplaceScreen/splacescreen_controller.dart';
import 'package:calliverse/app/core/theme/app_colors.dart';
import 'package:calliverse/app/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplacescreenView extends GetView<SplacescreenController> {
  const SplacescreenView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primarydarken,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/logo/app_logo.png"),
            ElevatedButton(onPressed: (){Get.offNamed(Routes.ONBOARDING);}, child: Text("move to next screen"))
          ],
        ),
      ),
    );
  }
}