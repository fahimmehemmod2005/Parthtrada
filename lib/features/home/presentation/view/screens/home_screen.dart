import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:parthtrada/core/constant/app_images.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        top: true,
        bottom: true,
        child: Align(
          alignment: AlignmentGeometry.bottomCenter,
          child: Container(
            height: 66.h,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Color(0xff191919),
              borderRadius: BorderRadius.only(topLeft: Radius.circular(30.r),topRight: Radius.circular(30.r)
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SvgPicture.asset(AppImages.search),
                SvgPicture.asset(AppImages.calender),
                SvgPicture.asset(AppImages.messege),
                SvgPicture.asset(AppImages.profile),
              ],
            ),
          ),
        ),
      )
    );
  }
}
