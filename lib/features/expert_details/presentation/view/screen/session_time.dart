import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:linear_calender/linear_calender.dart';
import 'package:parthtrada/features/expert_details/presentation/view/screen/session_details.dart';
import '../../../../../app/themes/app_text_styles.dart';
import '../../../../../app/widgets/buttons/primary_button.dart';
import '../../../../../core/constant/app_color.dart';
import '../../../../search/presentation/view/screen/search_screen.dart';
import '../widgets/time_slot.dart';

class SessionTime extends StatefulWidget {
  const SessionTime({super.key});

  @override
  State<SessionTime> createState() => _SessionTimeState();
}

class _SessionTimeState extends State<SessionTime> {
  @override
  Widget build(BuildContext context) {
    String? selectedSlot;
    // session selected
    final List<String> morningSlots = [
      '08:00 AM',
      '08:30 AM',
      '09:00 AM',
      '09:30 AM',
      '10:00 AM',
      '10:30 AM',
      '11:00 AM',
      '11:30 AM',
    ];
    final List<String> afternoonSlots = [
      '01:00 PM',
      '01:30 PM',
      '04:00 PM',
      '04:30 PM',
      '05:00 PM',
      '05:30 PM',
      '06:00 PM',
      '06:30 PM',
    ];
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // ---------------- month and year ------------------
        Text(
          DateFormat('MMMM yyyy').format(DateTime.now()),
          style: AppTextStyles.title20_800w(
            color: Color(0xff777980),
          ),
        ),
        SizedBox(height: 20.h),

        // ----------------- week and day ------------------
        LinearCalendar(
          monthVisibility: false,
          selectedColor: AppColor.primaryColor.withAlpha(20),
          unselectedColor: Colors.transparent,
          borderwidth: 0,
          selectedBorderColor: AppColor.primaryColor,
          unselectedBorderColor: Colors.transparent,
          onChanged: (value) => print(value),
          height: 60,
          selectedTextStyle: TextStyle(
            color: AppColor.primaryColor,
          ),
          unselectedTextStyle: TextStyle(color: Colors.white),
          backgroundColor: Colors.transparent,
          startDate: DateTime.now(),
        ),

        SizedBox(height: 20.h),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // ------------------ morning session -------------
            Text(
              'Morning Session',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),

            SizedBox(height: 16),
            Wrap(
              spacing: 10,
              runSpacing: 10,
              children: morningSlots.map((slot) {
                return TimeSlotChip(
                  time: slot,
                  isSelected: selectedSlot == slot,
                  onTap: () {
                    setState(() {
                      selectedSlot = slot;
                    });
                  },
                );
              }).toList(),
            ),

            SizedBox(height: 32),

            // ------------------ after noon session ------------
            Text(
              'Afternoon Session',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16),
            Wrap(
              spacing: 10,
              runSpacing: 10,
              children: afternoonSlots.map((slot) {
                return TimeSlotChip(
                  time: slot,
                  isSelected: selectedSlot == slot,
                  onTap: () {
                    setState(() {
                      selectedSlot = slot;
                    });
                  },
                );
              }).toList(),
            ),
          ],
        ),
        SizedBox(height: 20.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // -------------------- cancel button -------------
            PrimaryButton(
              text: 'Cancel',
              onTap: () {
                Navigator.pop(context);
              },
              width: 158,
              color: Colors.black38,
            ),

            // -------------------- next button  -----------------
            PrimaryButton(
              text: 'Next',
              width: 158,
              onTap: () {
                showModalBottomSheet(
                  context: context,
                  backgroundColor: Colors.transparent,
                  isScrollControlled: true,
                  builder: (context) {
                    return buildFilterSheet(
                      context,
                      // ----------------- session.dart page ------------------
                      SessionDetails(),
                    );
                  },
                );
              },
            ),
          ],
        ),
      ],
    );
  }
}
