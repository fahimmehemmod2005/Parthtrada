import 'package:flutter/material.dart';
import '../../../../../app/themes/app_text_styles.dart';
import '../../../../../app/widgets/buttons/primary_button.dart';
import '../../../../search/presentation/view/screen/search_screen.dart';
import '../widgets/duration_option.dart';
import 'booking_summary.dart';

class SessionDuration extends StatelessWidget {
  const SessionDuration({super.key});
  @override
  Widget build(BuildContext context) {

    // session duration
    int selectedDuration = 15;
    final List<int> durations = [15, 30, 45];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Session Duration',
          style: AppTextStyles.title20_800w(color: Colors.white),
        ),
        SizedBox(height: 20),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: durations.map((duration) {
            return Padding(
              padding: EdgeInsets.only(bottom: 12),
              child: DurationOption(
                duration: duration,
                isSelected: selectedDuration == duration,
                onTap: () {
                },
              ),
            );
          }).toList(),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            PrimaryButton(
              text: 'Cancel',
              onTap: () {
                Navigator.pop(context);
              },
              width: 158,
              color: Colors.black38,
            ),
            PrimaryButton(
              width: 158,
              text: 'Next',
              onTap: () {
                showModalBottomSheet(
                  context: context,
                  backgroundColor: Colors.transparent,
                  isScrollControlled: true,
                  builder: (context) {
                    return buildFilterSheet(
                        context,
                        // --------------------- booking summary.dart page -------------------
                        BookingSummary());
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
