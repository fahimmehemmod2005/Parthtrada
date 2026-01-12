import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:parthtrada/app/themes/app_text_styles.dart';
import 'package:parthtrada/app/widgets/buttons/primary_button.dart';
import 'package:parthtrada/core/constant/app_color.dart';
import 'package:parthtrada/core/constant/app_images.dart';

import '../widgets/bottom_nav_container.dart';

class DetailsScreen extends StatefulWidget {
  const DetailsScreen({super.key});

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // ---------- Top Image ----------
          SizedBox(child: Image.asset(AppImages.student)),

          // ---------- Back Button ----------
          Positioned(
            top: 50,
            left: 20,
            child: GestureDetector(
              onTap: () => Navigator.pop(context),
              child: SvgPicture.asset(AppImages.leftArrow),
            ),
          ),

          // ---------- Bottom Sheet ----------
          DraggableScrollableSheet(
            initialChildSize: 0.55,
            minChildSize: 0.55,
            maxChildSize: 0.9,
            builder: (context, scrollController) {
              return Container(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
                child: Column(
                  children: [
                    Expanded(
                      child: SingleChildScrollView(
                        controller: scrollController,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Jenny Wilson',
                              style: AppTextStyles.title24_800w(
                                color: Colors.white,
                              ),
                            ),

                            // ----------------- text -----------------------
                            Text(
                              'Student at Dhaka University',
                              style: AppTextStyles.title12_600w(
                                color: Color(0xff777980),
                              ),
                            ),

                            SizedBox(height: 8.h),

                            // --------------- location ------------------
                            Row(
                              children: [
                                SvgPicture.asset(AppImages.location),
                                Text(
                                  ' USA',
                                  style: AppTextStyles.title12_600w(
                                    color: Color(0xff777980),
                                  ),
                                ),
                              ],
                            ),

                            SizedBox(height: 15),

                            // ----------------- Bio ----------------
                            Text(
                              'Professional Bio',
                              style: AppTextStyles.title20_800w(color: Colors.white),
                            ),

                            SizedBox(height: 10.h),

                            RichText(
                              text: TextSpan(
                                text:
                                'An experienced industry professional dedicated to helping students and early-career individuals with personalized career advice, skill-building, and growth strategies.... ',
                                style: AppTextStyles.title16_400w(color: Color(0xff777980)),
                                children: [
                                  TextSpan(
                                    text: ' Read More',
                                    style: AppTextStyles.title16_400w(
                                      color: AppColor.primaryColor,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 20.h),

                            Text('What Specific topic would you like to discuss?',style: AppTextStyles.title16_700w(color: Colors.white),),
                            SizedBox(height: 10,),
                            Text('E.g., Implementing machine learning models in production',style: AppTextStyles.title14_600w(color: AppColor.grayBlack300),),
                            SizedBox(height: 20.h),

                            Text('What challenges are you currently facing?',style: AppTextStyles.title16_700w(color: Colors.white),),
                            SizedBox(height: 10,),
                            Text('E.g., Model performance issues in production environment',style: AppTextStyles.title14_600w(color: AppColor.grayBlack300),),
                            SizedBox(height: 20.h),

                            Text('What outcome do you expect from this session?',style: AppTextStyles.title16_700w(color: Colors.white),),
                            SizedBox(height: 10,),
                            Text('E.g., A clear action plan for improving model',style: AppTextStyles.title14_600w(color: AppColor.grayBlack300),)

                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ],
      ),

      // ---------- Bottom Buttons ----------
      bottomNavigationBar: BottomNavContainer(),
    );
  }
}
