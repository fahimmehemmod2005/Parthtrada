import 'package:flutter/material.dart';
import '../../../../../app/themes/app_text_styles.dart';
import '../../../../../app/widgets/buttons/primary_button.dart';
import '../../../../expert_details/presentation/view/widgets/time_slot.dart';

class Availability extends StatefulWidget {
  const Availability({
    super.key,
  });

  @override
  State<Availability> createState() => _AvailabilityState();
}

class _AvailabilityState extends State<Availability> {
  // Move selectedSlot here as state variables
  String? selectedDay;
  String? selectedTime;
  // Move lists here too
  final List<String> availableDays = [
    'Sun',
    'Mon',
    'Tues',
    'Wed',
    'Thu',
    'Fri',
  ];
  final List<String> availableTimes = [
    '08:00 AM',
    '08:30 AM',
    '09:00 AM',
    '09:30 AM',
    '10:00 AM',
    '10:30 AM',
    '11:00 AM',
    '11:30 AM',
    '12:30 PM',
    '01:00 PM',
    '01:30 PM',
    '02:00 PM',
    '02:30 PM',
    '03:00 PM',
    '03:30 PM',
  ];


  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          children: [
            Text(
              'Availability',
              style: AppTextStyles.title24_800w(color: Colors.white),
            ),
            Spacer(),
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Icon(
                Icons.cancel,
                color: Colors.white,
              ),
            ),
          ],
        ),
        Divider(color: Colors.grey),
        SizedBox(height: 10),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // ------------------ Available Days -------------
            Text(
              'Available Days',
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
              children: availableDays.map((day) {
                return TimeSlotChip(
                  time: day,
                  isSelected: selectedDay == day,
                  onTap: () {
                    setState(() {
                      selectedDay = day;
                    });
                  },
                );
              }).toList(),
            ),

            SizedBox(height: 32),

            // ------------------ Available Times ------------
            Text(
              'Available Times',
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
              children: availableTimes.map((time) {
                return TimeSlotChip(
                  time: time,
                  isSelected: selectedTime == time,
                  onTap: () {
                    setState(() {
                      selectedTime = time;
                    });
                  },
                );
              }).toList(),
            ),
          ],
        ),
        SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            PrimaryButton(
              height: 50,
              width: 150,
              text: 'Back',
              color: Colors.black38,
              onTap: () {
                Navigator.pop(context);
              },
            ),
            PrimaryButton(
              width: 150,
              height: 50,
              text: 'Done',
              onTap: () {
                // Return selected values
                Navigator.pop(context, {
                  'day': selectedDay,
                  'time': selectedTime,
                });
              },
            ),
          ],
        ),
      ],
    );
  }
}