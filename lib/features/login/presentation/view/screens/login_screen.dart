import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:parthtrada/app/themes/app_text_styles.dart';
import 'package:parthtrada/app/widgets/buttons/primary_button.dart';
import 'package:parthtrada/core/constant/app_images.dart';
import 'package:parthtrada/core/constant/route_name.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 150),

              // --------------- app Logo ---------------
              SizedBox(
                height: 100.h,
                width: 100.w,
                child: Image.asset(AppImages.appLogo),
              ),

              SizedBox(height: 10.h),

              // --------------- Logo text -----------------
              Text(
                'TrueNote',
                style: AppTextStyles.title24_800w(color: Colors.white),
              ),

              SizedBox(height: 136.h),

              // ---------------- title -----------------------
              Text(
                'Create with LinkedIn',
                style: AppTextStyles.title24_800w(color: Colors.white),
              ),

              SizedBox(height: 16.h),

              // ---------------- sub title -----------------------
              Text(
                'Sign up in seconds using your LinkedIn\nprofile. Fast and verified.',
                textAlign: TextAlign.center,
                style: AppTextStyles.title16_400w(color: Color(0xffD2D2D5)),
              ),

              SizedBox(height: 48.h),

              // ---------------- primary button ----------------------
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: PrimaryButton(
                  text: 'Login In With Linkdin',
                  onTap: () {
                    Navigator.pushNamed(context, RouteName.home);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
