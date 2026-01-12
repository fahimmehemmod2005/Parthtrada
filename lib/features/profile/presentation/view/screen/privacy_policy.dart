import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:parthtrada/core/constant/app_color.dart';
import '../../../../../app/themes/app_text_styles.dart';
import '../../../../../core/constant/app_images.dart';

class PrivacyPolicy extends StatefulWidget {
  const PrivacyPolicy({super.key});

  @override
  State<PrivacyPolicy> createState() => _PrivacyPolicyState();
}

class _PrivacyPolicyState extends State<PrivacyPolicy> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        top: true,
        bottom: true,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: SvgPicture.asset(AppImages.leftArrow),
                  ),
                  SizedBox(width: 15.w),
                  Text(
                    'Privacy Policy',
                    style: AppTextStyles.title20_800w(color: Colors.white),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Divider(color: Colors.grey),
            ),
            Expanded(
              child: Scrollbar(
                thumbVisibility: true,
                trackVisibility: true,
                interactive: true,
                thickness: 10,
                scrollbarOrientation: ScrollbarOrientation.right,
                child: SingleChildScrollView(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Privacy Policy',
                        style: AppTextStyles.title16_700w(color: Colors.white),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        'At [Your Company Name], we respect your privacy and are committed to protecting your personal information. This privacy policy outlines the types of personal data we collect and how we use, store, and protect it.',
                        style: AppTextStyles.title16_400w(
                          color: AppColor.grayBlack300,
                        ),
                      ),
                      const SizedBox(height: 10),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
