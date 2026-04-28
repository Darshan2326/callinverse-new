import 'package:calliverse/app/Screens/Home/MessagesScreen/ChatRoomView/ChatRoom_view.dart';
import 'package:calliverse/app/Screens/Home/MessagesScreen/messages_controller.dart';
import 'package:calliverse/app/Screens/Home/MessagesScreen/widgets/ChatTile.dart';
import 'package:calliverse/app/core/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class messagesView extends GetView<messagesController> {
  const messagesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F7FF),
      body: CustomScrollView(
        controller: controller.scrollController,
        physics: const BouncingScrollPhysics(),
        slivers: [
          /// ── App Bar ──────────────────────────────────────────────
          SliverAppBar(
            floating: false,
            pinned: true,
            snap: false,
            collapsedHeight: 70,
            automaticallyImplyLeading: false,
            expandedHeight: 130,
            backgroundColor: AppColors.primary,
            elevation: 0,
            flexibleSpace: FlexibleSpaceBar(
              collapseMode: CollapseMode.pin,
              background: Container(
                decoration: BoxDecoration(
                  color: AppColors.primary,
                  boxShadow: [
                    BoxShadow(
                      color: AppColors.primary.withOpacity(0.3),
                      blurRadius: 20,
                      offset: const Offset(0, 6),
                    ),
                  ],
                ),
                child: SafeArea(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(20, 14, 20, 12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        /// Header row
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              'Messages',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 26,
                                fontWeight: FontWeight.w800,
                                letterSpacing: -0.5,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 12),

                        /// Search bar
                        Container(
                          height: 42,
                          decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.18),
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(
                              color: Colors.white.withOpacity(0.3),
                              width: 1,
                            ),
                          ),
                          child: TextField(
                            onChanged: controller.updateSearch,
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                            ),
                            decoration: InputDecoration(
                              hintText: 'Search conversations...',
                              hintStyle: TextStyle(
                                color: Colors.white.withOpacity(0.6),
                                fontSize: 14,
                              ),
                              border: InputBorder.none,
                              prefixIcon: Icon(
                                Icons.search_rounded,
                                color: Colors.white.withOpacity(0.7),
                                size: 20,
                              ),
                              contentPadding: const EdgeInsets.symmetric(
                                vertical: 12,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),

          /// ── Section Label ────────────────────────────────────────
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(20, 20, 20, 6),
              child: Row(
                children: [
                  const Text(
                    'All Messages',
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w700,
                      color: Color(0xFF9398A8),
                      letterSpacing: 0.8,
                    ),
                  ),
                  const SizedBox(width: 8),
                  Obx(
                    () => Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 8,
                        vertical: 2,
                      ),
                      decoration: BoxDecoration(
                        color: AppColors.primary.withOpacity(0.12),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Text(
                        '${controller.filteredChats.length}',
                        style: TextStyle(
                          fontSize: 11,
                          fontWeight: FontWeight.w700,
                          color: AppColors.primary,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          /// ── Chat List ────────────────────────────────────────────
          Obx(
            () => SliverList(
              delegate: SliverChildBuilderDelegate((context, index) {
                final chat = controller.filteredChats[index];
                final bool isLast =
                    index == controller.filteredChats.length - 1;

                return GestureDetector(
                  onTap: () {
                    Get.to(
                      () => ChatRoomView(
                        userName: chat.name,
                        imageUrl: chat.imageUrl,
                      ),
                      transition: Transition.cupertino,
                    );
                  },
                  child: ChatTile(
                    name: chat.name,
                    message: chat.message,
                    time: chat.time,
                    imageUrl: chat.imageUrl,
                    isRead: chat.isRead,
                    // Pass these if your model supports them:
                    // unreadCount: chat.unreadCount ?? 0,
                    // isOnline: chat.isOnline ?? false,
                  ),
                );
              }, childCount: controller.filteredChats.length),
            ),
          ),

          /// Bottom padding
          const SliverToBoxAdapter(child: SizedBox(height: 30)),
        ],
      ),
    );
  }
}
