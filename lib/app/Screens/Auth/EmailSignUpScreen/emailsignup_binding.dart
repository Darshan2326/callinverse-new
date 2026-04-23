import 'package:calliverse/app/Screens/Auth/EmailSignUpScreen/emailsignup_controller.dart';
import 'package:get/instance_manager.dart';

class EmailsignupBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<EmailsignupController>(EmailsignupController());
  }
}
