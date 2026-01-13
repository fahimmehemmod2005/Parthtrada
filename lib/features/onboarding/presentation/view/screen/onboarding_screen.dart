import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:parthtrada/app/widgets/buttons/primary_button.dart';
import 'package:parthtrada/core/constant/app_color.dart';
import 'package:parthtrada/core/constant/route_name.dart';
import 'package:parthtrada/features/onboarding/presentation/viewmodel/onboarding_viewmodel.dart';
import 'package:provider/provider.dart';

import '../widgets/onboarding_design.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  @override
  Widget build(BuildContext context) {
    final onboardingVM = context.watch<OnboardingViewmodel>();

    return Scaffold(
      body: SafeArea(
        top: true,
        bottom: true,
        child: Column(
          children: [
            Expanded(
              child: Stack(
                children: [
                  PageView.builder(
                    controller: onboardingVM.pageController,
                    onPageChanged: (index) {
                      onboardingVM.setPage(index);
                    },
                    itemCount: onboardingVM.onboardingPages.length,
                    itemBuilder: (context, index) {
                      final page = onboardingVM.onboardingPages[index];
                      return OnboardingPage(
                        title: page.title,
                        description: page.description,
                        imagePath: page.image,
                      );
                    },
                  ),
                  Positioned(
                    top: 580,
                    right: 0,
                    left: 0,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 50.w),
                      child: PrimaryButton(
                          text: onboardingVM.isLastPage ? 'Get Started' : 'Next',
                          onTap: (){
                            if (onboardingVM.isLastPage) {
                              Navigator.pushNamed(context, RouteName.login);
                            } else {
                              onboardingVM.nextPage();
                            }
                          }
                      )
                  ),
                  )
                ],
              ),
            ),

            // Indicators
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                onboardingVM.onboardingPages.length,
                    (index) => Container(
                  margin: EdgeInsets.symmetric(horizontal: 3.w),
                  width: onboardingVM.currentPage == index ? 15.w : 8.w,
                  height: 7.h,
                  decoration: BoxDecoration(
                    color: onboardingVM.currentPage == index
                        ? AppColor.primaryColor
                        : AppColor.primaryColor,
                    borderRadius: BorderRadius.circular(4),
                  ),
                ),
              ),
            ),

            SizedBox(height: 76.h),

          ],
        ),
      ),
    );
  }
}