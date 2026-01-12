import 'package:flutter/material.dart';

import '../../../../../core/constant/app_color.dart';
import '../../../../../core/constant/app_images.dart';
import '../screen/chat_screen.dart';

class ChatBubble extends StatelessWidget {
  final String userImage;
  final String expertImage;
  final ChatMessage message;

  const ChatBubble({Key? key, required this.message, required this.userImage, required this.expertImage}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: Row(
        mainAxisAlignment: message.isMe
            ? MainAxisAlignment.end
            : MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (!message.isMe) ...[
            CircleAvatar(
              radius: 16,
              backgroundColor: Color(0xFF2a2a2a),
              child: Image.asset(expertImage),
            ),
            const SizedBox(width: 8),
          ],
          Flexible(
            child: Column(
              crossAxisAlignment: message.isMe
                  ? CrossAxisAlignment.end
                  : CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 12,
                  ),
                  decoration: BoxDecoration(
                    color: message.isMe
                        ? AppColor.primaryColor
                        : const Color(0xFF1a1a1a),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Text(
                    message.text,
                    style: const TextStyle(color: Colors.white, fontSize: 15),
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  message.time,
                  style: const TextStyle(
                    color: Color(0xFF4a4a4a),
                    fontSize: 11,
                  ),
                ),
              ],
            ),
          ),
          if (message.isMe) ...[
            SizedBox(width: 8),
            CircleAvatar(radius: 16, child: Image.asset(userImage)),
          ],
        ],
      ),
    );
  }
}