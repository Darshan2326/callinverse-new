import 'package:calliverse/app/Screens/Home/AIBoot_Screen/ai_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AIView extends GetView<AIController> {
  const AIView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AI Assistant'),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.deepPurple,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.smart_toy, size: 80, color: Colors.deepPurple[300]),
            const SizedBox(height: 16),
            Text(
              'AI Assistant',
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            const SizedBox(height: 8),
            const Text('Ask me anything!'),
          ],
        ),
      ),
    );
  }
}
