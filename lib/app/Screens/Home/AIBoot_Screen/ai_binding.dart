import 'package:calliverse/app/Screens/Home/AIBoot_Screen/ai_controller.dart';
import 'package:get/get.dart';

class AIBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<AIController>(AIController());
  }
}
