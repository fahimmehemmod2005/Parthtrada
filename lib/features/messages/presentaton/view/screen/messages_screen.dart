import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../app/themes/app_text_styles.dart';
import '../../../../../core/constant/app_color.dart';
import '../../../../../core/constant/app_images.dart';
import '../../../../../core/constant/route_name.dart';

class MessagesScreen extends StatefulWidget {
  const MessagesScreen({super.key});

  @override
  State<MessagesScreen> createState() => _MessagesScreenState();
}

class _MessagesScreenState extends State<MessagesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        top: true,
        bottom: true,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    'Messages',
                    style: AppTextStyles.title32_800w(color: Colors.white),
                  ),
                  Spacer(),
                  GestureDetector(
                    child: SvgPicture.asset(AppImages.noti),
                    onTap: () {
                      Navigator.pushNamed(context, RouteName.notification);
                    },
                  ),
                ],
              ),
              Text(
                'Chat with your connections',
                style: AppTextStyles.title16_400w(color: AppColor.grayBlack300),
              ),
              SizedBox(height: 20),
              Expanded(
                child: SingleChildScrollView(
                    child: GestureDetector(
                      onTap: (){
                        Navigator.pushNamed(context, RouteName.chat);
                      },
                      child: Container(
                        height: 80.h,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: AppColor.containerColor,
                          borderRadius: BorderRadius.circular(12.r),
                        ),
                        child: Padding(
                          padding:  EdgeInsets.all(10),
                          child: Row(
                            children: [
                              CircleAvatar(
                                child: Image.asset(AppImages.user3, fit: BoxFit.cover),
                              ),

                              SizedBox(width: 10.w),

                              Expanded(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Fahim Hasan',
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      style: AppTextStyles.title16_700w(color: Colors.white),
                                    ),
                                    SizedBox(height: 4.h),
                                    Text(
                                      'Looking forward to our call tomorrow and discussing the project details',
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      style: AppTextStyles.title12_600w(
                                        color: AppColor.grayBlack50,
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              SizedBox(width: 10.w),

                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    '10:30',
                                    style: AppTextStyles.title12_600w(
                                      color: AppColor.grayBlack300,
                                    ),
                                  ),
                                  SizedBox(height: 6.h),
                                  CircleAvatar(
                                    radius: 13,
                                    backgroundColor: AppColor.primaryColor,
                                    child: Text(
                                      '1',
                                      style: TextStyle(color: Colors.white, fontSize: 12),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      )

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
