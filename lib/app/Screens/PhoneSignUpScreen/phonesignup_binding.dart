import 'package:calliverse/app/Screens/PhoneSignUpScreen/phonesignup_controller.dart';
import 'package:get/instance_manager.dart';

class PhonesignupBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<PhonesignupController>(PhonesignupController());
  }
}
