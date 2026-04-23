import 'package:calliverse/app/Screens/Auth/EmailVerification/emailverify_controller.dart';
import 'package:get/get.dart';
// import 'otp_controller.dart';

class EmailverifyBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<EmailverifyController>(EmailverifyController());
  }
}
