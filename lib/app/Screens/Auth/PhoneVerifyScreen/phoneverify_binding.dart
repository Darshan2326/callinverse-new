import 'package:calliverse/app/Screens/Auth/PhoneVerifyScreen/phoneverify_controller.dart';
import 'package:get/instance_manager.dart';

class PhoneverifyBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<PhoneverifyController>(PhoneverifyController());
  }
}
