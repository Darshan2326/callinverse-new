import 'package:calliverse/app/Screens/Home/MessagesScreen/messages_controller.dart';
import 'package:get/instance_manager.dart';

class messagesBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<messagesController>(messagesController());
  }
}
