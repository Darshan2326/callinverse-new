import 'package:calliverse/app/Screens/Home/MessagesScreen/messages_controller.dart';
import 'package:calliverse/app/Screens/Home/MessagesScreen/widgets/ChatTile.dart';
import 'package:calliverse/app/core/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';

class messagesView extends GetView<messagesController> {
  const messagesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            floating: true,
            pinned: true,
            expandedHeight: 120,
            backgroundColor: AppColors.primary,
            flexibleSpace: FlexibleSpaceBar(
              titlePadding: const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 8,
              ),
              title: Container(
                height: 35,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: TextField(
                  onChanged: controller.updateSearch,
                  decoration: const InputDecoration(
                    hintText: "Search...",
                    border: InputBorder.none,
                    prefixIcon: Icon(Icons.search),
                    contentPadding: EdgeInsets.symmetric(vertical: 10),
                  ),
                ),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate((context, index) {
              return const ChatTile(
                name: "Pranav Ray",
                message: "okay sure!!",
                time: "12:25 PM",
                imageUrl: "https://i.pravatar.cc/150?img=3",
                isRead: true,
              );
            }, childCount: 6),
          ),
        ],
      ),
    );
  }
}
