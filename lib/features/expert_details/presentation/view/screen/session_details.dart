import 'package:flutter/material.dart';
import 'package:parthtrada/features/expert_details/presentation/view/screen/session_duration.dart';
import '../../../../../app/themes/app_text_styles.dart';
import '../../../../../app/widgets/buttons/primary_button.dart';
import '../../../../search/presentation/view/screen/search_screen.dart';
import '../../../../../app/widgets/inputfield/search_input_field.dart';

class SessionDetails extends StatelessWidget {
  const SessionDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Session Details',
          style: AppTextStyles.title20_800w(color: Colors.white),
        ),
        Text(
          'Help us prepare for your session with Sarah Chen',
          style: AppTextStyles.title16_400w(color: Color(0xff777980)),
        ),
        Divider(color: Colors.grey),
        Text(
          'What Specific topic would you like to discuss?',
          style: AppTextStyles.title20_800w(color: Colors.white),
        ),
        SizedBox(height: 10),
        SearchInputField(
          hintText: 'E.g., Implementing machine learning models in production',
          height: 80,
          contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          maxLine: 5,
        ),
        SizedBox(height: 10),
        Text(
          'What challenges are you currently facing?',
          style: AppTextStyles.title20_800w(color: Colors.white),
        ),
        SizedBox(height: 10),
        SearchInputField(
          hintText: 'E.g., Model performance issues in production environment',
          height: 80,
          contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          maxLine: 5,
        ),
        SizedBox(height: 10),
        Text(
          'What outcome do you expect from this session?',
          style: AppTextStyles.title20_800w(color: Colors.white),
        ),
        SizedBox(height: 10),
        SearchInputField(
          hintText: 'E.g., A clear action plan for improving model',
          height: 80,
          contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          maxLine: 5,
        ),
        SizedBox(height: 20),
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
                      // ----------------- sessionDuration.dart page ------------------
                      SessionDuration(),
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
