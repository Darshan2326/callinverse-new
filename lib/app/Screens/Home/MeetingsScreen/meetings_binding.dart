import 'package:calliverse/app/Screens/Home/MeetingsScreen/meetings_controller.dart';
import 'package:get/get.dart';

class MeetingsBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<MeetingsController>(MeetingsController());
  }
}
