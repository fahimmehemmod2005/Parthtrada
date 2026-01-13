import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:parthtrada/app/themes/app_text_styles.dart';
import 'package:parthtrada/core/constant/app_color.dart';
import 'package:parthtrada/core/constant/app_images.dart';

class MentorStatsSection extends StatelessWidget {
  const MentorStatsSection({Key? key}) : super(key: key);

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
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _buildStatItem(
                icon: AppImages.trophy,
                value: '2K+',
                label: 'Mentors',
              ),
              _buildDivider(),
              _buildStatItem(
                icon: AppImages.target,
                value: '100K+',
                label: 'Sessions',
              ),
              _buildDivider(),
              _buildStatItem(
                icon: AppImages.users,
                value: '50K+',
                label: 'Users',
              ),
              _buildDivider(),
              _buildStatItem(
                icon: AppImages.greenStar,
                value: '4.9',
                label: 'Rating',
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildStatItem({
    required String icon,
    required String value,
    required String label,
  }) {
    return Column(
      children: [
        SvgPicture.asset(
          icon,
          height: 25.h,
          color: AppColor.primaryColor,
        ),
        SizedBox(height: 5.h),
        Text(
          value,
          style: AppTextStyles.title20_800w(color: Colors.white)
        ),
        Text(
          label,
          style: AppTextStyles.title12_600w(color: AppColor.grayBlack300)
        ),
      ],
    );
  }

  Widget _buildDivider() {
    return Container(
      height: 50.h,
      width: 1,
      color: Color(0xFF2a2a2a),
    );
  }
}