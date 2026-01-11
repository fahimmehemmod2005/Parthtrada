import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../themes/app_text_styles.dart';

class PrimaryButton extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  final double? height;
  final double? width;
  final Color? color;
  const PrimaryButton({
    super.key,
    required this.text,
    required this.onTap,
    this.height = 56,
    this.width = double.infinity,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: color ?? Color(0xff019877),
          borderRadius: BorderRadius.circular(10.r),
        ),
        child: Center(
          child: Text(text,style: AppTextStyles.primaryButtonText(color: Colors.white),),
        ),
      ),
    );
  }
}
