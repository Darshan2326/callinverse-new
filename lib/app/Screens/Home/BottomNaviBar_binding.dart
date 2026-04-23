import 'package:calliverse/app/Screens/Home/BottomNaviBar_controller.dart';
import 'package:get/get.dart';

class BottomnavibarBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<BottomnavibarController>(BottomnavibarController());
  }
}
