import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:parthtrada/app/themes/app_text_styles.dart';
import 'package:parthtrada/core/constant/app_images.dart';
import 'package:parthtrada/core/constant/route_name.dart';

import '../../../../../app/widgets/buttons/primary_button.dart';
import '../../../../../core/constant/app_color.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
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

              // -------------- back button and notification text -----------
              Row(
                children: [
                  GestureDetector(
                    child: SvgPicture.asset(AppImages.leftArrow),
                    onTap: (){
                      Navigator.pop(context);
                    },
                  ),
                  SizedBox(width: 10.w),
                  Text('Notifications',style: AppTextStyles.title24_800w(color: Colors.white),),
                ],
              ),

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
                  padding: EdgeInsetsGeometry.all(15),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CircleAvatar(
                            child: Image.asset(AppImages.user7),
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: Icon(Icons.close, color: Colors.white),
                          ),
                        ],
                      ),
                      Text('Jenny Wilson',style: AppTextStyles.title24_800w(color: Colors.white),),
                      Text('Wants to take your consultation on June 13th at 3 PM.',style: AppTextStyles.title16_400w(color: AppColor.grayBlack300)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          PrimaryButton(
                            height: 40,
                            width: 147,
                            text: 'Decline',
                            color: Colors.black38,
                            onTap: () {},
                          ),
                          PrimaryButton(
                            width: 147,
                            height: 40,
                            text: 'Accept',
                            onTap: () {
                              Navigator.pushNamed(context, RouteName.detailsScreen);
                            },
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

