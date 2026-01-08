import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:parthtrada/app/themes/app_text_styles.dart';
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
          alignment: Alignment.bottomCenter,
          child: Container(
            height: 66.h,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Color(0xff191919),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30.r),
                topRight: Radius.circular(30.r),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                BottomNavBar(imagePath: AppImages.search,text: 'Search',),
                BottomNavBar(imagePath: AppImages.calender,text: 'calender',),
                BottomNavBar(imagePath: AppImages.messege,text: 'Massage',),
                BottomNavBar(imagePath: AppImages.profile,text: 'Profile',),
                ],
            ),
          ),
        ),
      ),
    );
  }
}

class BottomNavBar extends StatelessWidget {
  final String text;
  final String imagePath;
  const BottomNavBar({super.key, required this.text, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        GestureDetector(onTap: () {}, child: SvgPicture.asset(imagePath)),
        SizedBox(height: 5.h),
        Text(text, style: AppTextStyles.title10_400w(color: Color(0xff777980))),
      ],
    );
  }
}
