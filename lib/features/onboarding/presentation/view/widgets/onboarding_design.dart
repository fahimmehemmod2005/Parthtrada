import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:parthtrada/app/themes/app_text_styles.dart';
import 'package:parthtrada/core/constant/app_color.dart';

class OnboardingPage extends StatelessWidget {
  final String title;
  final String description;
  final String imagePath;

  const OnboardingPage({
    Key? key,
    required this.title,
    required this.description,
    required this.imagePath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 40.h),

          // Title
          Text(
            title,
            textAlign: TextAlign.center,
            style: AppTextStyles.title24_800w(color: Colors.white)
          ),

          SizedBox(height: 12),

          // Description
          Text(
            description,
            textAlign: TextAlign.center,
            style: AppTextStyles.title16_400w(color: AppColor.grayBlack50)
          ),

          SizedBox(height: 30),

          // Image
          Container(
            height: 400,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(24),
            ),
            child: Image.asset(
              imagePath,
            ),
          ),

          SizedBox(height: 20.h),
        ],
      ),
    );
  }
}