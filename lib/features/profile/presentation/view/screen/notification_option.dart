import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:parthtrada/app/widgets/buttons/primary_button.dart';
import 'package:parthtrada/core/constant/route_name.dart';
import 'package:parthtrada/features/profile/presentation/view/widgets/switch_checkbox_panel.dart';
import '../../../../../app/themes/app_text_styles.dart';
import '../../../../../core/constant/app_images.dart';

class NotificationOption extends StatefulWidget {
  const NotificationOption({super.key});

  @override
  State<NotificationOption> createState() => _NotificationOptionState();
}

class _NotificationOptionState extends State<NotificationOption> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
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
              const SizedBox(height: 10),
              const Divider(color: Colors.grey),
              const SizedBox(height: 10),

              SwitchCheckboxPanel(
                text: 'Notifications',
                controlType: PanelControlType.switchButton,
                value: true,
                switchOnChanged: (value) {},
              ),
              const SizedBox(height: 10),
              SwitchCheckboxPanel(
                text: 'Email',
                controlType: PanelControlType.switchButton,
                value: true,
                switchOnChanged: (value) {},
              ),
              const SizedBox(height: 10),
              SwitchCheckboxPanel(
                text: 'Sound',
                controlType: PanelControlType.switchButton,
                value: true,
                switchOnChanged: (value) {},
              ),
              const SizedBox(height: 10),
              SwitchCheckboxPanel(
                text: 'Vibrate',
                controlType: PanelControlType.switchButton,
                value: true,
                switchOnChanged: (value) {},
              ),
              const SizedBox(height: 10),
              SwitchCheckboxPanel(
                text: 'App Updates',
                controlType: PanelControlType.switchButton,
                value: true,
                switchOnChanged: (value) {},
              ),

              const Spacer(),

              PrimaryButton(
                text: 'Save',
                onTap: () {
                  Navigator.pushNamed(context, RouteName.profile);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
