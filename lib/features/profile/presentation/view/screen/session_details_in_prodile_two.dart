import 'package:flutter/material.dart';
import 'package:parthtrada/core/constant/route_name.dart';

import '../../../../../app/themes/app_text_styles.dart';
import '../../../../../app/widgets/buttons/primary_button.dart';
import '../../../../../app/widgets/containertext/container_text.dart';
import '../../../../../app/widgets/inputfield/search_input_field.dart';
import '../../../../../core/constant/app_color.dart';
import '../../../../search/presentation/view/screen/search_screen.dart';

class SessionDetailsInProfileTwo extends StatelessWidget {
  const SessionDetailsInProfileTwo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text('Session Details',style: AppTextStyles.title24_800w(color: Colors.white),),
            Spacer(),
            GestureDetector(
              onTap: (){Navigator.pop(context);},
              child: Icon(Icons.cancel,color: Colors.white,),
            ),
          ],
        ),
        Divider(color: Colors.grey,),
        SizedBox(height: 5,),
        Text('Experience',style: AppTextStyles.title20_800w(color: Colors.white),),
        SizedBox(height: 10,),
        SearchInputField(
          hintText: '4',
          contentPadding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
        ),
        SizedBox(height: 10,),
        Text('Available Time',style: AppTextStyles.title20_800w(color: Colors.white),),
        SizedBox(height: 5,),
        SearchInputField(
          hintText: 'Select Time',
          contentPadding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
        ),
        SizedBox(height: 5,),
        Row(
          children: [
            TextContainer(text: 'Machine Learning',
              width: 150,
              height: 40,
              backgroundColor: AppColor.primaryColor,
              textStyle: AppTextStyles.title16_700w(color: Colors.white),
            ),
            SizedBox(width: 10),
            TextContainer(text: 'Data Science',
              width: 130,
              height: 40,
              backgroundColor: AppColor.primaryColor,
              textStyle: AppTextStyles.title16_700w(color: Colors.white),
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
                Navigator.pushNamed(context, RouteName.editProfile);
              },
            ),
          ],
        ),
      ],
    );
  }
}