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

  String selectedLanguage = 'English (US)';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              /// ---------- App bar ----------
              Row(
                children: [
                  GestureDetector(
                    onTap: () => Navigator.pop(context),
                    child: SvgPicture.asset(AppImages.leftArrow),
                  ),
                  SizedBox(width: 15.w),
                  Text(
                    'Language',
                    style: AppTextStyles.title20_800w(color: Colors.white),
                  ),
                ],
              ),

              const SizedBox(height: 10),
              const Divider(color: Colors.grey),
              const SizedBox(height: 10),

              /// ---------- Suggested ----------
              Text(
                'Suggested',
                style: AppTextStyles.title20_800w(color: Colors.white),
              ),
              const SizedBox(height: 10),

              SwitchCheckboxPanel(
                text: 'English (US)',
                controlType: PanelControlType.checkbox,
                value: selectedLanguage == 'English (US)',
                checkboxOnChanged: (value) {
                  setState(() {
                    selectedLanguage = 'English (US)';
                  });
                },
              ),

              const SizedBox(height: 10),

              SwitchCheckboxPanel(
                text: 'English (UK)',
                controlType: PanelControlType.checkbox,
                value: selectedLanguage == 'English (UK)',
                checkboxOnChanged: (value) {
                  setState(() {
                    selectedLanguage = 'English (UK)';
                  });
                },
              ),

              const SizedBox(height: 20),

              /// ---------- Others ----------
              Text(
                'Others',
                style: AppTextStyles.title20_800w(color: Colors.white),
              ),

              const Spacer(),

              /// ---------- Save button ----------
              PrimaryButton(
                text: 'Save',
                onTap: () {
                  Navigator.pushNamed(context, RouteName.profile);
                },
              ),
              SizedBox(height: 10,),
            ],
          ),
        ),
      ),
    );
  }
}

