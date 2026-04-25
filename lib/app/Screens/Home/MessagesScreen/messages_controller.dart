import 'package:get/state_manager.dart';

class messagesController extends GetxController {
  RxString wellcome = "This is the Home Screen".obs;
  var searchText = ''.obs;

  void updateSearch(String value) {
    searchText.value = value;
  }
}
