import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:parthtrada/app/themes/app_text_styles.dart';
import 'package:parthtrada/app/widgets/containertext/container_text.dart';

class SelectSkill extends StatefulWidget {
  const SelectSkill({
    super.key,
  });

  @override
  State<SelectSkill> createState() => _SelectSkillState();
}

class _SelectSkillState extends State<SelectSkill> {
  // Track selected skills
  Map<String, bool> selectedSkills = {
    'Machine Learning': false,
    'System Design': false,
    'Cloud Architecture': false,
    'Data Science': false,
    'Frontend Development': false,
    'Backend Development': false,
  };

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Select Skill',
          style: AppTextStyles.title24_800w(color: Colors.white),
        ),
        SizedBox(height: 20.h),

        // Use Wrap to prevent overflow
        Wrap(
          spacing: 10.w,
          runSpacing: 10.h,
          children: selectedSkills.keys.map((skill) {
            return TextContainer(
              text: skill,
              height: 35,
              showCheckbox: true,
              checkboxValue: selectedSkills[skill]!,
              onChanged: (value) {
                setState(() {
                  selectedSkills[skill] = value ?? false;
                });
              },
            );
          }).toList(),
        ),
      ],
    );
  }
}