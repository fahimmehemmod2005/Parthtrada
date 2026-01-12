import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:parthtrada/core/constant/app_color.dart';
import '../../../../../app/themes/app_text_styles.dart';

class BottomNavBar extends StatelessWidget {
  final String text;
  final String imagePath;
  final bool isActive;
  final VoidCallback onTap;

  const BottomNavBar({
    super.key,
    required this.text,
    required this.imagePath,
    required this.onTap,
    this.isActive = false,
  });

  @override
  Widget build(BuildContext context) {
    final color = isActive ? AppColor.primaryColor :  Color(0xff777980);

    return GestureDetector(
      onTap: onTap,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(
            imagePath,
            colorFilter: ColorFilter.mode(color, BlendMode.srcIn),
          ),
          SizedBox(height: 5.h),
          Text(
            text,
            style: AppTextStyles.title10_400w(color: color),
          ),
        ],
      ),
    );
  }
}