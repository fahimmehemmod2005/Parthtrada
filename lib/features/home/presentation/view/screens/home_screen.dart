import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:parthtrada/core/constant/app_images.dart';
import 'package:parthtrada/features/messages/presentaton/view/screen/messages_screen.dart';
import 'package:parthtrada/features/profile/presentation/view/screen/profile_screen.dart';
import 'package:parthtrada/features/schedule/presentation/view/screen/schedule_screen.dart';
import 'package:parthtrada/features/search/presentation/view/screen/search_screen.dart';

import '../widgets/home_Nav_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;
  final List<Widget> pages = [
    SearchScreen(),
    ScheduleScreen(),
    MessagesScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // ---------- active page ----------
          pages[currentIndex],
          // ---------- bottom nav ----------
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 66.h,
              width: double.infinity,
              decoration: BoxDecoration(
                color: const Color(0xff191919),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30.r),
                  topRight: Radius.circular(30.r),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  BottomNavBar(
                    imagePath: AppImages.search,
                    text: 'Search',
                    isActive: currentIndex == 0,
                    onTap: () => setState(() => currentIndex = 0),
                  ),
                  BottomNavBar(
                    imagePath: AppImages.calender,
                    text: 'Schedule',
                    isActive: currentIndex == 1,
                    onTap: () => setState(() => currentIndex = 1),
                  ),
                  BottomNavBar(
                    imagePath: AppImages.message,
                    text: 'Message',
                    isActive: currentIndex == 2,
                    onTap: () => setState(() => currentIndex = 2),
                  ),
                  BottomNavBar(
                    imagePath: AppImages.profile,
                    text: 'Profile',
                    isActive: currentIndex == 3,
                    onTap: () => setState(() => currentIndex = 3),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

