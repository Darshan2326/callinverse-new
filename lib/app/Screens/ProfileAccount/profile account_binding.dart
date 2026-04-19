import 'package:calliverse/app/Screens/ProfileAccount/profileaccount_controller.dart';
import 'package:get/instance_manager.dart';

class ProfileaccountBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<ProfileaccountController>(ProfileaccountController());
  }
}
