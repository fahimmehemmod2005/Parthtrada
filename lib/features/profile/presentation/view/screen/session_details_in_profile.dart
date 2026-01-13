import 'package:flutter/material.dart';
import 'package:parthtrada/app/themes/app_text_styles.dart';
import 'package:parthtrada/app/widgets/containertext/container_text.dart';
import 'package:parthtrada/app/widgets/inputfield/search_input_field.dart';
import 'package:parthtrada/core/constant/app_color.dart';
import 'package:parthtrada/core/constant/app_images.dart';
import 'package:parthtrada/features/profile/presentation/view/screen/select_skill.dart';
import 'package:parthtrada/features/profile/presentation/view/screen/session_details_in_prodile_two.dart';
import '../../../../../app/widgets/buttons/primary_button.dart';
import '../../../../search/presentation/view/screen/search_screen.dart';

class SessionDetailsInProfile extends StatelessWidget {
  const SessionDetailsInProfile({
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
        Text('Professional Skills',style: AppTextStyles.title20_800w(color: Colors.white),),
        SizedBox(height: 10,),
        SearchInputField(
          hintText: 'Selected Skill',
          contentPadding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
          suffixImage: AppImages.add,
          onSuffixTap: (){
            showModalBottomSheet(
              context: context,
              backgroundColor: Colors.transparent,
              isScrollControlled: true,
              builder: (context) {
                return buildFilterSheet(
                  context,
                  SelectSkill(),
                );
              },
            );
          },
        ),
        SizedBox(height: 7,),
        Row(
          children: [
            TextContainer(text: '  Machine Learning  ',
              height: 40,
              backgroundColor: AppColor.primaryColor,
              textStyle: AppTextStyles.title16_700w(color: Colors.white),
            ),
            SizedBox(width: 10),
            TextContainer(text: '  Data Science  ',
              height: 40,
              backgroundColor: AppColor.primaryColor,
              textStyle: AppTextStyles.title16_700w(color: Colors.white),
            ),
          ],
        ),
        SizedBox(height: 10,),
        Text('Hourly Rate',style: AppTextStyles.title20_800w(color: Colors.white),),
        SizedBox(height: 10,),
        SearchInputField(
          hintText: '\$150',
          contentPadding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
        ),
        SizedBox(height: 10,),
        Text('Professional Bio',style: AppTextStyles.title20_800w(color: Colors.white),),
        SizedBox(height: 10,),
        SearchInputField(
          height: 122,
          maxLine: 6,
          hintText: 'Description',
          contentPadding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
        ),
        SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            PrimaryButton(
              height: 50,
              width: 150,
              text: 'Cancel',
              color: Colors.black38,
              onTap: () {
                Navigator.pop(context);
              },
            ),
            PrimaryButton(
              width: 150,
              height: 50,
              text: 'Next',
              onTap: () {
                showModalBottomSheet(
                  context: context,
                  backgroundColor: Colors.transparent,
                  isScrollControlled: true,
                  builder: (context) {
                    return buildFilterSheet(
                      context,
                      SessionDetailsInProfileTwo(),
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
