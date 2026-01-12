import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:parthtrada/features/profile/presentation/view/widgets/switch_checkbox_panel.dart';
import '../../../../../app/themes/app_text_styles.dart';
import '../../../../../app/widgets/buttons/primary_button.dart';
import '../../../../../core/constant/app_images.dart';
import '../../../../../core/constant/route_name.dart';

class Language extends StatefulWidget {
  const Language({super.key});

  @override
  State<Language> createState() => _LanguageState();
}

class _LanguageState extends State<Language> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        top: true,
        bottom: true,
        child: Padding(
          padding: EdgeInsetsGeometry.symmetric(horizontal: 20),
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
              SizedBox(height: 10),
              Divider(color: Colors.grey),
              SizedBox(height: 10),
              Text(
                'Suggested',
                style: AppTextStyles.title20_800w(color: Colors.white),
              ),
              SizedBox(height: 10),
              SwitchCheckboxPanel(
                text: 'English (US)',
                controlType: PanelControlType.checkbox,
                checkboxOnChanged: (value) {},
                value: true,
              ),
              SizedBox(height: 10),
              SwitchCheckboxPanel(
                text: 'English (UK)',
                controlType: PanelControlType.checkbox,
                checkboxOnChanged: (value) {},
                value: false,
              ),
              SizedBox(height: 10),
              Text(
                'Others',
                style: AppTextStyles.title20_800w(color: Colors.white),
              ),
              Spacer(),
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
