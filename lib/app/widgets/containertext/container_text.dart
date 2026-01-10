import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/constant/app_color.dart';
import '../../themes/app_text_styles.dart';

class TextContainer extends StatelessWidget {
  final String text;
  final double width;
  const TextContainer({
    super.key, required this.text, required this.width,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30.h,
      width: width.w,
      decoration: BoxDecoration(
        color: AppColor.primaryColor.withAlpha(20),
        border: Border.all(color: AppColor.primaryColor),
        borderRadius: BorderRadius.circular(30.r),
      ),

      child: Center(
        child: Text(
          text,
          style: AppTextStyles.title14_600w(
            color: AppColor.primaryColor,
          ),
        ),
      ),
    );
  }
}