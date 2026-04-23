import 'package:calliverse/app/Screens/Home/MessagesScreen/messages_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';

class messagesView extends GetView<messagesController> {
  const messagesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
      child: Text(controller.wellcome.value),
    ),
    );
  }
}