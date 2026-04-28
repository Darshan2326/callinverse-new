import 'package:calliverse/app/Screens/Home/AIBoot_Screen/ai_binding.dart';
import 'package:calliverse/app/Screens/Home/AIBoot_Screen/ai_view.dart';
import 'package:calliverse/app/Screens/Home/CallsScreen/calls_binding.dart';
import 'package:calliverse/app/Screens/Home/CallsScreen/calls_view.dart';
import 'package:calliverse/app/Screens/Home/MeetingsScreen/meetings_binding.dart';
import 'package:calliverse/app/Screens/Home/MeetingsScreen/meetings_view.dart';
import 'package:calliverse/app/Screens/Home/MessagesScreen/messages_binding.dart';
import 'package:calliverse/app/Screens/Home/MessagesScreen/messages_view.dart';
import 'package:calliverse/app/Screens/Home/ProfileScreen/profile_binding.dart';
import 'package:calliverse/app/Screens/Home/ProfileScreen/profile_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:calliverse/app/core/widgets/glass_nav_bar.dart';

class BottomnavibarController extends GetxController {
  RxInt currentIndex = 0.obs;
  RxBool showBottomBar = true.obs;

   /// List of screens to display
  final List<Widget> screens = [
    const messagesView(),
    const CallsView(),
    const AIView(),
    const MeetingsView(),
    const ProfileView(),
  ];

   /// List of bindings for each screen
  final List<Bindings> bindings = [
    messagesBinding(),
    CallsBinding(),
    AIBinding(),
    MeetingsBinding(),
    ProfileBinding(),
  ];


  /// Navigation items for the bottom navigation bar
  final List<NavItemData> navItems = [
    const NavItemData(
      icon: Icons.chat_bubble_rounded,
      outlineIcon: Icons.chat_bubble_outline_rounded,
      label: 'Messages',
    ),
    const NavItemData(
      icon: Icons.call_rounded,
      outlineIcon: Icons.call_outlined,
      label: 'Calls',
    ),
    const NavItemData(
      icon: Icons.auto_awesome_rounded,
      outlineIcon: Icons.auto_awesome_outlined,
      label: 'AI',
    ),
    const NavItemData(
      icon: Icons.videocam_rounded,
      outlineIcon: Icons.videocam_outlined,
      label: 'Meetings',
    ),
    const NavItemData(
      icon: Icons.person_rounded,
      outlineIcon: Icons.person_outline_rounded,
      label: 'Profile',
    ),
  ];

  /// Change the current index
  void changeIndex(int index) {
    currentIndex.value = index;
  }
 void hideBars() {
    showBottomBar.value = false;
  }

  void showBars() {
    showBottomBar.value = true;
  }

  /// Handle floating action button press
  void onFloatingActionButtonPressed() {
    Get.snackbar(
      'FAB Pressed',
      'Floating Action Button Clicked!',
      duration: const Duration(seconds: 2),
    );
  }
}
