import 'package:calliverse/app/Screens/OnBording/onboarding_controller.dart';
import 'package:calliverse/app/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:get/state_manager.dart';

class OnboardingVew extends GetView<OnboardingController> {
  const OnboardingVew({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/logo/Illustration.png"),
            ElevatedButton(onPressed: (){Get.offNamed(Routes.LOGIN);}, child: Text("Move to next screen"))
          ],
        ),
      ),
    );
  }
}