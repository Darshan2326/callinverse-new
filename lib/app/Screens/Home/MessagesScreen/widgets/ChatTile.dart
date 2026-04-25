import 'package:flutter/material.dart';

class ChatTile extends StatelessWidget {
  final String name;
  final String message;
  final String time;
  final String imageUrl;
  final bool isRead;

  const ChatTile({
    super.key,
    required this.name,
    required this.message,
    required this.time,
    required this.imageUrl,
    this.isRead = false,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          /// Avatar
          CircleAvatar(
            radius: 26,
            backgroundImage: NetworkImage(imageUrl),
          ),

          const SizedBox(width: 12),

          /// Name + Message
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: const TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  message,
                  style: TextStyle(
                    color: Colors.grey[600],
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          ),

          /// Time + Read Icon
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                time,
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.grey[500],
                ),
              ),
              const SizedBox(height: 6),
              if (isRead)
                const Icon(
                  Icons.done_all,
                  size: 18,
                  color: Colors.blue,
                ),
            ],
          ),
        ],
      ),
    );
  }
}