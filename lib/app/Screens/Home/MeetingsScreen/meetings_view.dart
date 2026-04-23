import 'package:calliverse/app/Screens/Home/MeetingsScreen/meetings_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MeetingsView extends GetView<MeetingsController> {
  const MeetingsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Meetings'),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.deepPurple,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.videocam, size: 80, color: Colors.deepPurple[300]),
            const SizedBox(height: 16),
            Text('Meetings', style: Theme.of(context).textTheme.headlineSmall),
            const SizedBox(height: 8),
            const Text('No scheduled meetings'),
          ],
        ),
      ),
    );
  }
}
