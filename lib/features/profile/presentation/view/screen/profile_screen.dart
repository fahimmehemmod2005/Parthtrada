import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:parthtrada/app/themes/app_text_styles.dart';
import 'package:parthtrada/core/constant/app_color.dart';
import 'package:parthtrada/core/constant/app_images.dart';
import 'package:parthtrada/core/constant/route_name.dart';
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
              InformationListTile(text: 'Payment Method', prefixImage: AppImages.payment,onTap: (){Navigator.pushNamed(context, RouteName.paymentMethod);}),
              SizedBox(height: 10.h),
              InformationListTile(text: 'Notification', prefixImage: AppImages.notification,onTap: (){Navigator.pushNamed(context, RouteName.notificationOption);}),
              SizedBox(height: 10.h),
              InformationListTile(text: 'Language', prefixImage: AppImages.language,onTap: (){Navigator.pushNamed(context, RouteName.language);}),
              SizedBox(height: 10.h),
              InformationListTile(text: 'Past Calls', prefixImage: AppImages.pastTime,onTap: (){Navigator.pushNamed(context, RouteName.pastCalls); }),
              SizedBox(height: 10.h),
              Text('Preferences', style: AppTextStyles.title20_800w(color: Colors.white),),
              SizedBox(height: 10.h),
              InformationListTile(text: 'Legal and Policies', prefixImage: AppImages.policies,onTap: (){Navigator.pushNamed(context, RouteName.privacyPolicy);}),
              SizedBox(height: 10.h),
              InformationListTile(text: 'Help & Support', prefixImage: AppImages.support,onTap: (){Navigator.pushNamed(context, RouteName.trueNoteSupport);}),
              SizedBox(height: 10.h),
              InformationListTile(text: 'Logout', prefixImage: AppImages.logout,onTap: (){_showLogoutDialog(context);}),
              SizedBox(height: 40,),
            ],
          ),
        ),
      ),
    );
  }
}

void _showLogoutDialog(BuildContext context) {
  showDialog(
    context: context,
    barrierDismissible: true,
    builder: (BuildContext context) {
      return Dialog(
        backgroundColor: Color(0xFF1a1a1a),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        child: Container(
          padding: EdgeInsets.all(24),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              // Title
              Text(
                'Are you sure you want to logout?',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 12),

              // Subtitle
              Text(
                'Click to the Log Out button from to log out from the app.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFF808080),
                  fontSize: 13,
                ),
              ),
              SizedBox(height: 24),

              // Buttons
              Row(
                children: [
                  // Cancel Button
                  Expanded(
                    child: GestureDetector(
                      onTap: () {Navigator.pop(context);},
                      child: Container(
                        padding: EdgeInsets.symmetric(vertical: 16),
                        decoration: BoxDecoration(
                          color: Color(0xFF2a2a2a),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Text(
                          'Cancel',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 12),

                  // Log Out Button
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, RouteName.login);
                      },
                      child: Container(
                        padding: EdgeInsets.symmetric(vertical: 16),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Text(
                          'Log Out',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      );
    },
  );
}

