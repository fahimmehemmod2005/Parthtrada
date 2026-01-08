import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class CustomRichText extends StatelessWidget {
  final String firstText;
  final String secondText;
  final VoidCallback onTap;
  const CustomRichText({
    super.key,
    required this.firstText,
    required this.secondText, required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: firstText,
        style: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w400,
          color: Color(0xff777980),
        ),
        children: [
          TextSpan(
            text: secondText,
            style: TextStyle(color: Color(0xffDE3526)),
            recognizer: TapGestureRecognizer()..onTap = onTap,
          ),
        ],
      ),
    );
  }
}