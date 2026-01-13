import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:parthtrada/app/themes/app_text_styles.dart';
import 'package:parthtrada/core/constant/app_images.dart';

class BrandsCard extends StatelessWidget {
  const BrandsCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(24.w),
      decoration: BoxDecoration(
        color: Color(0xFF1a1a1a),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        children: [
          // Our mentors are from
          Text(
            'Our mentors are from',
            style: AppTextStyles.title20_800w(color: Colors.white),
          ),

          SizedBox(height: 20.h),

          // Company Logos
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SvgPicture.asset(AppImages.google, height: 20.h),
              // Google logo
              SvgPicture.asset(AppImages.meta, height: 20.h),
              // Meta logo
              SvgPicture.asset(AppImages.tesla, height: 20.h),
              // Tesla logo
              SvgPicture.asset(AppImages.microsoft, height: 20.h),
              // Microsoft logo
            ],
          ),

          SizedBox(height: 16.h),

          // and many more text
          Text(
            'and many more',
            style: AppTextStyles.title14_600w(
              color: Color(0xFF777980),
            ),
          ),
        ],
      ),
    );
  }
}