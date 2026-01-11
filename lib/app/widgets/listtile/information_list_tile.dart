import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/constant/app_color.dart';
import '../../../core/constant/app_images.dart';
import '../../themes/app_text_styles.dart';

class InformationListTile extends StatelessWidget {
  final String text;
  final String prefixImage;
  final VoidCallback onTap;
  const InformationListTile({
    super.key,
    required this.text,
    required this.prefixImage, required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 52.h,
        width: double.infinity,
        decoration: BoxDecoration(
          color: AppColor.containerColor,
          borderRadius: BorderRadius.circular(12.r),
        ),
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Row(
            children: [
              SvgPicture.asset(prefixImage),
              SizedBox(width: 10.w),
              Text(
                text,
                style: AppTextStyles.title16_700w(color: Colors.white),
              ),
              Spacer(),
              SvgPicture.asset(AppImages.arrowRight),
            ],
          ),
        ),
      ),
    );
  }
}