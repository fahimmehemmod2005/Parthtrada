import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../app/themes/app_text_styles.dart';
import '../../../../../core/constant/app_color.dart';

class ExperienceStatusContainer extends StatelessWidget {
  final String status;
  final String number;
  final String imagePath;
  const ExperienceStatusContainer({
    super.key,
    required this.status,
    required this.number,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 87.h,
      width: 102.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.r),
        color: Colors.black38,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            status,
            style: AppTextStyles.title12_600w(color: AppColor.primaryColor),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(imagePath),
              Text(
                number,
                style: AppTextStyles.title20_800w(color: AppColor.primaryColor),
              ),
            ],
          ),
        ],
      ),
    );
  }
}