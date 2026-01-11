import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:parthtrada/app/themes/app_text_styles.dart';
import 'package:parthtrada/core/constant/app_color.dart';
import 'package:parthtrada/core/constant/app_images.dart';
import 'package:parthtrada/core/constant/route_name.dart';
import 'package:parthtrada/features/schedule/presentation/view/screen/notification_screen.dart';

import '../../../../../app/widgets/buttons/primary_button.dart';

class ScheduleScreen extends StatefulWidget {
  const ScheduleScreen({super.key});

  @override
  State<ScheduleScreen> createState() => _ScheduleScreenState();
}

class _ScheduleScreenState extends State<ScheduleScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        top: true,
        bottom: true,
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text('Your Schedule',style: AppTextStyles.title32_800w(color: Colors.white),),
                  Spacer(),
                  GestureDetector(
                    child: SvgPicture.asset(AppImages.noti),
                    onTap: (){
                      Navigator.pushNamed(context, RouteName.notification);
                    },
                  ),
                ],
              ),
              Text('Upcoming video calls',style: AppTextStyles.title16_400w(color: AppColor.grayBlack300),),

              SizedBox(height: 30.h),

              // ----------------- schedule container -----------------
              Container(
                height: 242.h,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: AppColor.containerColor,
                  borderRadius: BorderRadius.circular(12.r)
                ),
                child: Padding(
                  padding: EdgeInsetsGeometry.all(20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CircleAvatar(
                            child: Image.asset(AppImages.experts),
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: Icon(Icons.close, color: Colors.white),
                          ),
                        ],
                      ),
                      Text('Sarah Chen',style: AppTextStyles.title24_800w(color: Colors.white),),
                      Text('Senior Data Scientist at Google',style: AppTextStyles.title16_400w(color: AppColor.grayBlack300)),
                      Row(
                        children: [
                          SvgPicture.asset(AppImages.sched),
                          SizedBox(width: 5.w),
                          Text(
                            ' June 1 Monday 02:00 PM',
                            style: AppTextStyles.title16_400w(
                              color: Color(0xff777980),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          PrimaryButton(
                            height: 40,
                            width: 147,
                            text: 'Cancel',
                            color: Colors.black38,
                            onTap: () {},
                          ),
                          PrimaryButton(
                            width: 147,
                            height: 40,
                            text: 'Join Call',
                            onTap: () {},
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
