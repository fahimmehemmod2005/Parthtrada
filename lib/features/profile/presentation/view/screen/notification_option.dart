import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:parthtrada/app/widgets/buttons/primary_button.dart';
import 'package:parthtrada/features/profile/presentation/view/widgets/switch_checkbox_panel.dart';
import '../../../../../app/themes/app_text_styles.dart';
import '../../../../../core/constant/app_images.dart';

class NotificationOption extends StatefulWidget {
  const NotificationOption({super.key});

  @override
  State<NotificationOption> createState() => _NotificationOptionState();
}

class _NotificationOptionState extends State<NotificationOption> {
  // State variables for each notification option
  bool notifications = true;
  bool email = true;
  bool sound = true;
  bool vibrate = true;
  bool appUpdates = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10.h),

              // Header
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: SvgPicture.asset(AppImages.leftArrow),
                  ),
                  SizedBox(width: 15.w),
                  Text(
                    'Notification',
                    style: AppTextStyles.title20_800w(color: Colors.white),
                  ),
                ],
              ),

              SizedBox(height: 10.h),
              Divider(color: Colors.grey),
              SizedBox(height: 20.h),

              // Notification Options
              SwitchCheckboxPanel(
                text: 'Notifications',
                controlType: PanelControlType.switchButton,
                value: notifications,
                switchOnChanged: (value) {
                  setState(() {
                    notifications = value!;
                  });
                },
              ),

              SizedBox(height: 10.h),

              SwitchCheckboxPanel(
                text: 'Email',
                controlType: PanelControlType.switchButton,
                value: email,
                switchOnChanged: (value) {
                  setState(() {
                    email = value!;
                  });
                },
              ),

              SizedBox(height: 10.h),

              SwitchCheckboxPanel(
                text: 'Sound',
                controlType: PanelControlType.switchButton,
                value: sound,
                switchOnChanged: (value) {
                  setState(() {
                    sound = value!;
                  });
                },
              ),

              SizedBox(height: 10.h),

              SwitchCheckboxPanel(
                text: 'Vibrate',
                controlType: PanelControlType.switchButton,
                value: vibrate,
                switchOnChanged: (value) {
                  setState(() {
                    vibrate = value!;
                  });
                },
              ),

              SizedBox(height: 10.h),

              SwitchCheckboxPanel(
                text: 'App Updates',
                controlType: PanelControlType.switchButton,
                value: appUpdates,
                switchOnChanged: (value) {
                  setState(() {
                    appUpdates = value!;
                  });
                },
              ),

              Spacer(),

              // Save Button
              PrimaryButton(
                text: 'Save',
                onTap: () {
                  // Navigate back or to profile
                  Navigator.pop(context);
                },
              ),

              SizedBox(height: 20.h),
            ],
          ),
        ),
      ),
    );
  }
}