import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:parthtrada/app/themes/app_text_styles.dart';
import 'package:parthtrada/app/widgets/containertext/container_text.dart';

class SelectSkill extends StatelessWidget {
  const SelectSkill({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Select Skill',style: AppTextStyles.title24_800w(color: Colors.white),),
        
        SizedBox(height: 20.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextContainer(
              text: 'Machine Learning',
              width: 180,
              height: 35,
              showCheckbox: true,
              checkboxValue: true,
              onChanged: (value){},
            ),
            TextContainer(
              text: 'System Design',
              width: 160,
              height: 35,
              showCheckbox: true,
              checkboxValue: true,
              onChanged: (value){},
            ),
          ],
        ),
        SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextContainer(
              text: 'Cloud Architecture',
              width: 180,
              height: 35,
              showCheckbox: true,
              checkboxValue: true,
              onChanged: (value){},
            ),
            TextContainer(
              text: 'Data Science',
              width: 160,
              height: 35,
              showCheckbox: true,
              checkboxValue: true,
              onChanged: (value){},
            ),
          ],
        ),
        SizedBox(height: 10),
        TextContainer(
          text: 'Frontend Development',
          width: 230,
          height: 35,
          showCheckbox: true,
          checkboxValue: true,
          onChanged: (value){},
        ),
        SizedBox(height: 10),
        TextContainer(
          text: 'Frontend Development',
          width: 230,
          height: 35,
          showCheckbox: true,
          checkboxValue: true,
          onChanged: (value){},
        ),

      ],
    );
  }
}