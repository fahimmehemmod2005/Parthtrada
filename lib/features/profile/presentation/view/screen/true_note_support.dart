import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../../app/themes/app_text_styles.dart';
import '../../../../../app/widgets/inputfield/search_input_field.dart';
import '../../../../../core/constant/app_color.dart';
import '../../../../../core/constant/app_images.dart';
import '../../../../messages/presentaton/view/screen/chat_screen.dart';
import '../../../../messages/presentaton/view/widgets/chat_bubble.dart';
import '../../../../messages/presentaton/view/widgets/typing_dots.dart';

class TrueNoteSupport extends StatefulWidget {
  const TrueNoteSupport({super.key});

  @override
  State<TrueNoteSupport> createState() => _TrueNoteSupportState();
}

class _TrueNoteSupportState extends State<TrueNoteSupport> {
  final TextEditingController _messageController = TextEditingController();
  final List< ChatMessage> messages = [];
  bool isTyping = false;
  void _sendMessage() {
    if (_messageController.text.trim().isEmpty) return;
    setState(() {
      // Add user message
      messages.add(
        ChatMessage(
          text: _messageController.text.trim(),
          isMe: true,
          time: _getCurrentTime(),
        ),
      );

      _messageController.clear();
      isTyping = true;

      // Auto reply after 2 seconds
      Future.delayed(const Duration(seconds: 2), () {
        setState(() {
          isTyping = false;
          messages.add(
            ChatMessage(
              text: 'Im visiting her profile. Looking forward to it.',
              isMe: false,
              time: _getCurrentTime(),
            ),
          );
        });
      });
    });
  }

  String _getCurrentTime() {
    final now = DateTime.now();
    final hour = now.hour > 12 ? now.hour - 12 : now.hour;
    final minute = now.minute.toString().padLeft(2, '0');
    final period = now.hour >= 12 ? 'pm' : 'am';
    return '$hour:$minute $period';
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        top: true,
        bottom: true,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: SvgPicture.asset(AppImages.leftArrow),
                  ),
                  SizedBox(width: 10.w),
                  CircleAvatar(child: Image.asset(AppImages.tureNote)),
                  SizedBox(width: 10.w),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'TrueNote Support',
                        style: AppTextStyles.title16_700w(color: Colors.white),
                      ),
                      Row(
                        children: [
                          Container(
                            height: 9,
                            width: 9,
                            decoration: BoxDecoration(
                              color: AppColor.primaryColor,
                              shape: BoxShape.circle,
                            ),
                          ),
                          SizedBox(width: 5),
                          Text(
                            'Online',
                            style: AppTextStyles.title12_600w(
                              color: AppColor.primaryColor,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              Divider(color: Colors.grey),
              SizedBox(height: 30.h),
              Expanded(
                child: messages.isEmpty
                    ? Center(
                  child: Text(
                    'No messages yet',
                    style: TextStyle(color: Color(0xFF4a4a4a)),
                  ),
                )
                    : ListView.builder(
                  itemCount: messages.length,
                  itemBuilder: (context, index) {
                    return ChatBubble(
                        message: messages[index],
                      expertImage: AppImages.tureNote,
                      userImage: AppImages.user7,
                    );
                  },
                ),
              ),

              // Message input
              Row(
                children: [
                  Expanded(
                    child: SearchInputField(
                      controller: _messageController,
                      onSubmitted: (value) => _sendMessage(),
                      hintText: 'Type here...',
                      contentPadding: EdgeInsets.symmetric(horizontal: 10),
                    ),
                  ),
                  SizedBox(width: 12),
                  GestureDetector(
                    onTap: _sendMessage,
                    child: Container(
                      width: 45,
                      height: 45,
                      decoration: BoxDecoration(
                        color: AppColor.primaryColor,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(10.0),
                        child: SvgPicture.asset(AppImages.send),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
