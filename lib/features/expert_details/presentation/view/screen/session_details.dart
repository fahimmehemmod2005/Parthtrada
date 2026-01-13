import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:parthtrada/features/expert_details/presentation/view/screen/session_duration.dart';
import '../../../../../app/themes/app_text_styles.dart';
import '../../../../../app/widgets/buttons/primary_button.dart';
import '../../../../search/presentation/view/screen/search_screen.dart';
import '../../../../../app/widgets/inputfield/search_input_field.dart';

class SessionDetails extends StatefulWidget {

  const SessionDetails({
    super.key,

  });

  @override
  State<SessionDetails> createState() => _SessionDetailsState();
}

class _SessionDetailsState extends State<SessionDetails> {

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Header
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Session Details',
                  style: AppTextStyles.title24_800w(color: Colors.white),
                ),
        GestureDetector(
          onTap: () => Navigator.pop(context),
          child: Icon(Icons.close, color: Colors.white),
        ),
              ],
            ),
            SizedBox(height: 4.h),
            Text(
              'Help us prepare for your session with Sarah Chen',
              style: AppTextStyles.title16_400w(color: Color(0xff777980)),
            ),
          ],
        ),

        Divider(color: Colors.grey, height: 24.h),

        SizedBox(height: 10.h),

        // Question 1
        Text(
          'What specific topic would you like to discuss?',
          style: AppTextStyles.title16_400w(color: Colors.white),
        ),
        SizedBox(height: 10.h),
        SearchInputField(
          hintText: 'E.g., Implementing machine learning models in production',
          height: 80,
          contentPadding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
          maxLine: 4,
        ),

        SizedBox(height: 20.h),

        // Question 2
        Text(
          'What challenges are you currently facing?',
          style: AppTextStyles.title16_400w(color: Colors.white),
        ),
        SizedBox(height: 10.h),
        SearchInputField(
          hintText: 'E.g., Model performance issues in production environment',
          height: 80,
          contentPadding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
          maxLine: 4,
        ),

        SizedBox(height: 20.h),

        // Question 3
        Text(
          'What outcome do you expect from this session?',
          style: AppTextStyles.title16_400w(color: Colors.white),
        ),
        SizedBox(height: 10.h),
        SearchInputField(
          hintText: 'E.g., A clear action plan for improving model',
          height: 80,
          contentPadding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
          maxLine: 4,
        ),

        Spacer(),

        // Bottom Buttons
        Row(
          children: [
            Expanded(
              child: PrimaryButton(
                text: 'Back',
                onTap: () {
                  Navigator.pop(context);
                },
                color: Colors.black38,
                height: 50.h,
              ),
            ),
            SizedBox(width: 12.w),
            Expanded(
              child: PrimaryButton(
                text: 'Next',
                height: 50.h,
                onTap: () {
                  // Navigate to next screen
                  showModalBottomSheet(
                    context: context,
                    backgroundColor: Colors.transparent,
                    isScrollControlled: true,
                    builder: (context) {
                      return buildFilterSheet(
                        context,
                        SessionDuration(),
                      );
                    },
                  );
                },
              ),
            ),
          ],
        ),

        SizedBox(height: 20.h),
      ],
    );
  }
}