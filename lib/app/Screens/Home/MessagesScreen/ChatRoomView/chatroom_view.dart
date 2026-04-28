import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ChatRoomView extends StatelessWidget {
  final String userName;
  final String imageUrl;

  const ChatRoomView({
    super.key,
    required this.userName,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0,
        title: Row(
          children: [
            CircleAvatar(backgroundImage: NetworkImage(imageUrl)),
            SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(userName),
                Text("Online", style: TextStyle(fontSize: 12)),
              ],
            ),
          ],
        ),
        actions: [Icon(Icons.search), SizedBox(width: 15)],
      ),

      body: Column(
        children: [
          /// Messages
          Expanded(
            child: ListView(
              padding: EdgeInsets.all(10),
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: messageBubble("Hello 👋", false),
                ),

                Align(
                  alignment: Alignment.centerRight,
                  child: messageBubble("Hi bro", true),
                ),
              ],
            ),
          ),

          /// Input Field
          Container(
            padding: EdgeInsets.all(8),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Type message...",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                  ),
                ),

                SizedBox(width: 10),

                CircleAvatar(child: Icon(Icons.send)),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget messageBubble(String text, bool isMe) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5),
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: isMe ? Colors.blue : Colors.grey.shade300,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Text(
        text,
        style: TextStyle(color: isMe ? Colors.white : Colors.black),
      ),
    );
  }
}
