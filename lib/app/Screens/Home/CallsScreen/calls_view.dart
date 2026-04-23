import 'package:calliverse/app/Screens/Home/CallsScreen/calls_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CallsView extends GetView<CallsController> {
  const CallsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Calls'),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.deepPurple,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.call, size: 80, color: Colors.deepPurple[300]),
            const SizedBox(height: 16),
            Text('Calls', style: Theme.of(context).textTheme.headlineSmall),
            const SizedBox(height: 8),
            const Text('No calls yet'),
          ],
        ),
      ),
    );
  }
}
