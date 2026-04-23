import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import 'package:calliverse/app/Screens/Home/MessagesScreen/messages_controller.dart';

import 'package:calliverse/app/Screens/Home/BottomNaviBar_controller.dart';
import 'package:calliverse/app/core/constants/app_colors.dart';
import 'package:calliverse/app/core/widgets/glass_nav_bar.dart';
import 'package:calliverse/app/core/widgets/pulse_fab.dart';

class BottomNaviBarView extends GetView<BottomnavibarController> {
  BottomNaviBarView({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      _initBinding();

      return Scaffold(
        backgroundColor: AppColors.primarydarken,
        extendBody: true,
        body: AnimatedSwitcher(
          duration: const Duration(milliseconds: 350),
          transitionBuilder: (child, animation) => FadeTransition(
            opacity: CurvedAnimation(parent: animation, curve: Curves.easeOut),
            child: child,
          ),
          child: KeyedSubtree(
            key: ValueKey(controller.currentIndex.value),
            child: controller.screens[controller.currentIndex.value],
          ),
        ),
        bottomNavigationBar: GlassNavBar(
          currentIndex: controller.currentIndex.value,
          items: controller.navItems,
          onTap: (index) {
            HapticFeedback.lightImpact();
            controller.changeIndex(index);
          },
        ),
        floatingActionButton: PulseFAB(
          onPressed: controller.onFloatingActionButtonPressed,
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      );
    });
  }

  /// Initialize the binding for the current screen
  void _initBinding() {
    if (Get.isRegistered<messagesController>() ||
        controller.currentIndex.value == 0) {
      if (!Get.isRegistered<messagesController>()) {
        controller.bindings[0].dependencies();
      }
    } else if (!Get.isRegistered<messagesController>()) {
      controller.bindings[controller.currentIndex.value].dependencies();
    }
  }
}
