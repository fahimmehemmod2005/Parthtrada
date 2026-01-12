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
  @override
  Widget build(BuildContext context) {
    String? selectedSlot;
    // session selected
    final List<String> availableDays  = [
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
      '12:30 AM',
      '01:00 PM',
      '01:30 PM',
      '02:00 PM',
      '02:30 PM',
      '03:00 PM',
      '03:30 PM',
    ];
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text('Availability',style: AppTextStyles.title24_800w(color: Colors.white),),
            Spacer(),
            GestureDetector(
              onTap: (){Navigator.pop(context);},
              child: Icon(Icons.cancel,color: Colors.white,),
            ),
          ],
        ),
        Divider(color: Colors.grey,),
        SizedBox(height: 10,),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // ------------------ morning session -------------
            Text(
              'Available Days ',
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
              children: availableDays.map((slot) {
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
              children: availableTimes.map((slot) {
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
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ],
    );
  }
}