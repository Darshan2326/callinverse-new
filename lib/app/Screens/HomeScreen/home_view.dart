import 'package:calliverse/app/Screens/HomeScreen/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
      child: Text(controller.wellcome.value),
    ),
    );
  }
}