import 'package:calliverse/app/Screens/OnBording/onboarding_controller.dart';
import 'package:get/instance_manager.dart';

class OnboardingBinding extends Bindings {
  @override
  void dependencies(){
    Get.lazyPut<OnboardingController>(()=>OnboardingController());
  }
}