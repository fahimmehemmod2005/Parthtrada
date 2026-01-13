import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import '../../../../../app/themes/app_text_styles.dart';
import '../../../../../app/widgets/buttons/primary_button.dart';
import '../../../../search/presentation/view/screen/search_screen.dart';
import '../widgets/duration_option.dart';
import 'booking_summary.dart';

class SessionDuration extends StatefulWidget {
  const SessionDuration({Key? key}) : super(key: key);

  @override
  State<SessionDuration> createState() => _SessionDurationState();
}

class _SessionDurationState extends State<SessionDuration> {
  int selectedDuration = 15;
  final List<int> durations = [15, 30, 45];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Header
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Session Duration',
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
          'Select your preferred session length',
          style: AppTextStyles.title14_600w(color: Color(0xff777980)),
        ),

        Divider(color: Colors.grey, height: 24.h),

        SizedBox(height: 20.h),

        // Duration Options
        Column(
          children: durations.map((duration) {
            return Padding(
              padding: EdgeInsets.only(bottom: 12.h),
              child: DurationOption(
                duration: duration,
                isSelected: selectedDuration == duration,
                onTap: () {
                  setState(() {
                    selectedDuration = duration;
                  });
                },
              ),
            );
          }).toList(),
        ),

        SizedBox(height: 20.h),

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
                  showModalBottomSheet(
                    context: context,
                    backgroundColor: Colors.transparent,
                    isScrollControlled: true,
                    builder: (context) {
                      return buildFilterSheet(context, BookingSummary());
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
