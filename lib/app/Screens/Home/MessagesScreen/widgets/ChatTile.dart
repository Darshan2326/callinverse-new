// import 'package:flutter/material.dart';

// class ChatTile extends StatelessWidget {
//   final String name;
//   final String message;
//   final String time;
//   final String imageUrl;
//   final bool isRead;

//   const ChatTile({
//     super.key,
//     required this.name,
//     required this.message,
//     required this.time,
//     required this.imageUrl,
//     this.isRead = false,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
//       child: Row(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           /// Avatar
//           CircleAvatar(
//             radius: 26,
//             backgroundImage: NetworkImage(imageUrl),
//           ),

//           const SizedBox(width: 12),

//           /// Name + Message
//           Expanded(
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(
//                   name,
//                   style: const TextStyle(
//                     fontWeight: FontWeight.w600,
//                     fontSize: 16,
//                   ),
//                 ),
//                 const SizedBox(height: 4),
//                 Text(
//                   message,
//                   style: TextStyle(
//                     color: Colors.grey[600],
//                     fontSize: 14,
//                   ),
//                 ),
//               ],
//             ),
//           ),

//           /// Time + Read Icon
//           Column(
//             crossAxisAlignment: CrossAxisAlignment.end,
//             children: [
//               Text(
//                 time,
//                 style: TextStyle(
//                   fontSize: 12,
//                   color: Colors.grey[500],
//                 ),
//               ),
//               const SizedBox(height: 6),
//               if (isRead)
//                 const Icon(
//                   Icons.done_all,
//                   size: 18,
//                   color: Colors.blue,
//                 ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }


import 'package:flutter/material.dart';

class ChatTile extends StatelessWidget {
  final String name;
  final String message;
  final String time;
  final String imageUrl;
  final bool isRead;
  final int unreadCount;
  final bool isOnline;

  const ChatTile({
    super.key,
    required this.name,
    required this.message,
    required this.time,
    required this.imageUrl,
    this.isRead = false,
    this.unreadCount = 0,
    this.isOnline = false,
  });

  @override
  Widget build(BuildContext context) {
    final bool hasUnread = unreadCount > 0;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 5),
      child: Container(
        decoration: BoxDecoration(
          color: hasUnread
              ? const Color(0xFFF0F4FF)
              : Colors.white,
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.05),
              blurRadius: 8,
              offset: const Offset(0, 2),
            ),
          ],
          border: hasUnread
              ? Border.all(color: const Color(0xFF4F6CF7).withOpacity(0.15), width: 1)
              : Border.all(color: Colors.transparent),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              /// Avatar with online dot
              Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      gradient: hasUnread
                          ? const LinearGradient(
                              colors: [Color(0xFF4F6CF7), Color(0xFF7B93FF)],
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                            )
                          : null,
                      boxShadow: [
                        BoxShadow(
                          color: hasUnread
                              ? const Color(0xFF4F6CF7).withOpacity(0.3)
                              : Colors.black.withOpacity(0.08),
                          blurRadius: 8,
                          offset: const Offset(0, 3),
                        ),
                      ],
                    ),
                    padding: hasUnread ? const EdgeInsets.all(2) : EdgeInsets.zero,
                    child: CircleAvatar(
                      radius: 26,
                      backgroundImage: NetworkImage(imageUrl),
                    ),
                  ),
                  if (isOnline)
                    Positioned(
                      bottom: 1,
                      right: 1,
                      child: Container(
                        width: 12,
                        height: 12,
                        decoration: BoxDecoration(
                          color: const Color(0xFF22C55E),
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.white, width: 2),
                        ),
                      ),
                    ),
                ],
              ),

              const SizedBox(width: 13),

              /// Name + Message
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: TextStyle(
                        fontWeight: hasUnread ? FontWeight.w700 : FontWeight.w600,
                        fontSize: 15.5,
                        color: const Color(0xFF1A1D2E),
                        letterSpacing: 0.1,
                      ),
                    ),
                    const SizedBox(height: 3),
                    Row(
                      children: [
                        if (isRead && !hasUnread)
                          const Padding(
                            padding: EdgeInsets.only(right: 4),
                            child: Icon(
                              Icons.done_all_rounded,
                              size: 15,
                              color: Color(0xFF4F6CF7),
                            ),
                          ),
                        Expanded(
                          child: Text(
                            message,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              color: hasUnread
                                  ? const Color(0xFF3D4A6B)
                                  : const Color(0xFF9398A8),
                              fontSize: 13.5,
                              fontWeight: hasUnread ? FontWeight.w500 : FontWeight.w400,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              const SizedBox(width: 10),

              /// Time + Badge
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    time,
                    style: TextStyle(
                      fontSize: 11.5,
                      color: hasUnread
                          ? const Color(0xFF4F6CF7)
                          : const Color(0xFFB0B5C3),
                      fontWeight: hasUnread ? FontWeight.w600 : FontWeight.w400,
                    ),
                  ),
                  const SizedBox(height: 6),
                  if (hasUnread)
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 3),
                      decoration: BoxDecoration(
                        gradient: const LinearGradient(
                          colors: [Color(0xFF4F6CF7), Color(0xFF7B93FF)],
                        ),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Text(
                        unreadCount > 99 ? '99+' : '$unreadCount',
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 11,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    )
                  else
                    const SizedBox(height: 20),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}