import 'package:calliverse/app/Screens/SplaceScreen/splacescreen_controller.dart';
import 'package:get/instance_manager.dart';

class SplacescreenBinding extends Bindings{
  @override
  void dependencies(){
    Get.put<SplacescreenController>(SplacescreenController());
  }
}