import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../themes/app_text_styles.dart';

class PrimaryButton extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  final double? height;
  final double? width;
  final Color? color;
  final bool isLoading;

  const PrimaryButton({
    super.key,
    required this.text,
    required this.onTap,
    this.height = 56,
    this.width = double.infinity,
    this.color,
    this.isLoading = false,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: isLoading ? null : onTap,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: color ?? const Color(0xff019877),
          borderRadius: BorderRadius.circular(10.r),
        ),
        child: Center(
          child: isLoading
              ? const SizedBox(
            height: 24,
            width: 24,
            child: CircularProgressIndicator(
              strokeWidth: 2.5,
              color: Colors.white,
            ),
          )
              : Text(
            text,
            style: AppTextStyles.primaryButtonText(color: Colors.white),
          ),
        ),
      ),
    );
  }
}

