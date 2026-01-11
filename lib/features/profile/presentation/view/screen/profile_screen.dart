import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:parthtrada/app/themes/app_text_styles.dart';
import 'package:parthtrada/core/constant/app_color.dart';
import 'package:parthtrada/core/constant/app_images.dart';
import 'package:parthtrada/core/constant/route_name.dart';
import 'package:parthtrada/features/profile/presentation/view/screen/edit_profile.dart';

import '../../../../../app/widgets/listtile/information_list_tile.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        top: true,
        bottom: true,
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 210.h,
                width: double.infinity,
                decoration: BoxDecoration(color: Colors.transparent),
                child: Column(
                  children: [
                    Stack(
                      children: [
                        Align(
                          alignment: Alignment.topCenter,
                          child: Container(
                            height: 140.h,
                            width: 140.w,
                            decoration: BoxDecoration(shape: BoxShape.circle),
                            child: Image.asset(AppImages.user7),
                          ),
                        ),
                        Positioned(
                          right: 0,
                          top: 0,
                          child: GestureDetector(
                            onTap: () {
                              Navigator.pushNamed(
                                context,
                                RouteName.notification,
                              );
                            },
                            child: SvgPicture.asset(AppImages.noti),
                          ),
                        ),
                      ],
                    ),
                    Text(
                      'Jenny Wilson',
                      style: AppTextStyles.title24_800w(color: Colors.white),
                    ),
                    Text(
                      'Student at Dhaka University',
                      style: AppTextStyles.title16_700w(
                        color: AppColor.grayBlack300,
                      ),
                    ),
                  ],
                ),
              ),
              Text('General', style: AppTextStyles.title20_800w(color: Colors.white),),
              SizedBox(height: 20.h),

              InformationListTile(text: 'Profile', prefixImage: AppImages.profileOutline,onTap: (){Navigator.pushNamed(context, RouteName.editProfile);}),
              SizedBox(height: 10.h),
              InformationListTile(text: 'Be A Mentor', prefixImage: AppImages.addPeople,onTap: (){}),
              SizedBox(height: 10.h),
              InformationListTile(text: 'Payment Method', prefixImage: AppImages.payment,onTap: (){}),
              SizedBox(height: 10.h),
              InformationListTile(text: 'Notification', prefixImage: AppImages.notification,onTap: (){}),
              SizedBox(height: 10.h),
              InformationListTile(text: 'Language', prefixImage: AppImages.language,onTap: (){}),
              SizedBox(height: 10.h),
              InformationListTile(text: 'Past Calls', prefixImage: AppImages.pastTime,onTap: (){}),
              SizedBox(height: 10.h),
              Text('Preferences', style: AppTextStyles.title20_800w(color: Colors.white),),
              SizedBox(height: 10.h),
              InformationListTile(text: 'Legal and Policies', prefixImage: AppImages.policies,onTap: (){}),
              SizedBox(height: 10.h),
              InformationListTile(text: 'Help & Support', prefixImage: AppImages.support,onTap: (){}),
              SizedBox(height: 10.h),
              InformationListTile(text: 'Logout', prefixImage: AppImages.logout,onTap: (){}),
            ],
          ),
        ),
      ),
    );
  }
}
