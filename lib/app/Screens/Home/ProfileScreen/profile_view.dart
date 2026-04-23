import 'package:calliverse/app/Screens/Home/ProfileScreen/profile_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfileView extends GetView<ProfileController> {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.deepPurple,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.person, size: 80, color: Colors.deepPurple[300]),
            const SizedBox(height: 16),
            Text('Profile', style: Theme.of(context).textTheme.headlineSmall),
            const SizedBox(height: 8),
            const Text('View your profile'),
          ],
        ),
      ),
    );
  }
}
