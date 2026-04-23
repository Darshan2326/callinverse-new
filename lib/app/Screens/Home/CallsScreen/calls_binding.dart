import 'package:calliverse/app/Screens/Home/CallsScreen/calls_controller.dart';
import 'package:get/get.dart';

class CallsBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<CallsController>(CallsController());
  }
}
