import 'package:calliverse/app/Screens/Home/BottomNaviBar_controller.dart';
import 'package:calliverse/app/Screens/Home/MessagesScreen/model/ChatModel.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
import 'package:get/state_manager.dart';

class messagesController extends GetxController {
  var searchText = ''.obs;

  var chatList = <ChatModel>[
    ChatModel(
      name: "Pranav Ray",
      message: "okay sure!!",
      time: "12:25 PM",
      imageUrl: "https://i.pravatar.cc/150?img=1",
      isRead: true,
    ),
    ChatModel(
      name: "Ayesha Tanwar",
      message: "Let's meet tomorrow",
      time: "11:10 AM",
      imageUrl: "https://i.pravatar.cc/150?img=2",
      isRead: true,
    ),
    ChatModel(
      name: "Roshni",
      message: "Sent you the files",
      time: "10:45 AM",
      imageUrl: "https://i.pravatar.cc/150?img=3",
      isRead: false,
    ),
    ChatModel(
      name: "Kaushik",
      message: "Call me when free",
      time: "09:30 AM",
      imageUrl: "https://i.pravatar.cc/150?img=4",
      isRead: false,
    ),
    ChatModel(
      name: "Makenna Press",
      message: "That sounds great!",
      time: "Yesterday",
      imageUrl: "https://i.pravatar.cc/150?img=5",
      isRead: true,
    ),
    ChatModel(
      name: "Ann George",
      message: "Thanks a lot 😊",
      time: "Yesterday",
      imageUrl: "https://i.pravatar.cc/150?img=6",
      isRead: true,
    ),
    ChatModel(
      name: "Pranav Ray",
      message: "okay sure!!",
      time: "12:25 PM",
      imageUrl: "https://i.pravatar.cc/150?img=1",
      isRead: true,
    ),
    ChatModel(
      name: "Ayesha Tanwar",
      message: "Let's meet tomorrow",
      time: "11:10 AM",
      imageUrl: "https://i.pravatar.cc/150?img=2",
      isRead: true,
    ),
    ChatModel(
      name: "Roshni",
      message: "Sent you the files",
      time: "10:45 AM",
      imageUrl: "https://i.pravatar.cc/150?img=3",
      isRead: false,
    ),
    ChatModel(
      name: "Kaushik",
      message: "Call me when free",
      time: "09:30 AM",
      imageUrl: "https://i.pravatar.cc/150?img=4",
      isRead: false,
    ),
    ChatModel(
      name: "Makenna Press",
      message: "That sounds great!",
      time: "Yesterday",
      imageUrl: "https://i.pravatar.cc/150?img=5",
      isRead: true,
    ),
    ChatModel(
      name: "Ann George",
      message: "Thanks a lot 😊",
      time: "Yesterday",
      imageUrl: "https://i.pravatar.cc/150?img=6",
      isRead: true,
    ),
    ChatModel(
      name: "Pranav Ray",
      message: "okay sure!!",
      time: "12:25 PM",
      imageUrl: "https://i.pravatar.cc/150?img=1",
      isRead: true,
    ),
    ChatModel(
      name: "Ayesha Tanwar",
      message: "Let's meet tomorrow",
      time: "11:10 AM",
      imageUrl: "https://i.pravatar.cc/150?img=2",
      isRead: true,
    ),
    ChatModel(
      name: "Roshni",
      message: "Sent you the files",
      time: "10:45 AM",
      imageUrl: "https://i.pravatar.cc/150?img=3",
      isRead: false,
    ),
    ChatModel(
      name: "Kaushik",
      message: "Call me when free",
      time: "09:30 AM",
      imageUrl: "https://i.pravatar.cc/150?img=4",
      isRead: false,
    ),
    ChatModel(
      name: "Makenna Press",
      message: "That sounds great!",
      time: "Yesterday",
      imageUrl: "https://i.pravatar.cc/150?img=5",
      isRead: true,
    ),
    ChatModel(
      name: "Ann George",
      message: "Thanks a lot 😊",
      time: "Yesterday",
      imageUrl: "https://i.pravatar.cc/150?img=6",
      isRead: true,
    ),
    ChatModel(
      name: "Pranav Ray",
      message: "okay sure!!",
      time: "12:25 PM",
      imageUrl: "https://i.pravatar.cc/150?img=1",
      isRead: true,
    ),
    ChatModel(
      name: "Ayesha Tanwar",
      message: "Let's meet tomorrow",
      time: "11:10 AM",
      imageUrl: "https://i.pravatar.cc/150?img=2",
      isRead: true,
    ),
    ChatModel(
      name: "Roshni",
      message: "Sent you the files",
      time: "10:45 AM",
      imageUrl: "https://i.pravatar.cc/150?img=3",
      isRead: false,
    ),
    ChatModel(
      name: "Kaushik",
      message: "Call me when free",
      time: "09:30 AM",
      imageUrl: "https://i.pravatar.cc/150?img=4",
      isRead: false,
    ),
    ChatModel(
      name: "Makenna Press",
      message: "That sounds great!",
      time: "Yesterday",
      imageUrl: "https://i.pravatar.cc/150?img=5",
      isRead: true,
    ),
    ChatModel(
      name: "Ann George",
      message: "Thanks a lot 😊",
      time: "Yesterday",
      imageUrl: "https://i.pravatar.cc/150?img=6",
      isRead: true,
    ),
  ].obs;

  final ScrollController scrollController = ScrollController();

  @override
  void onInit() {
    super.onInit();

    final nav = Get.find<BottomnavibarController>();

    scrollController.addListener(() {
      if (scrollController.position.userScrollDirection ==
          ScrollDirection.reverse) {
        nav.hideBars();
      } else if (scrollController.position.userScrollDirection ==
          ScrollDirection.forward) {
        nav.showBars();
      }
    });
  }

  @override
  void onClose() {
    scrollController.dispose();
    super.onClose();
  }

  /// Filtered list (reactive)
  List<ChatModel> get filteredChats {
    if (searchText.value.isEmpty) return chatList;

    return chatList
        .where(
          (chat) =>
              chat.name.toLowerCase().contains(
                searchText.value.toLowerCase(),
              ) ||
              chat.message.toLowerCase().contains(
                searchText.value.toLowerCase(),
              ),
        )
        .toList();
  }

  void updateSearch(String value) {
    searchText.value = value;
  }
}
