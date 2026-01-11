import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:parthtrada/app/widgets/inputfield/search_input_field.dart';
import 'package:parthtrada/features/profile/presentation/view/screen/session_details_in_profile.dart';
import '../../../../../app/themes/app_text_styles.dart';
import '../../../../../app/widgets/buttons/primary_button.dart';
import '../../../../../core/constant/app_color.dart';
import '../../../../../core/constant/app_images.dart';
import '../../../../../core/constant/route_name.dart';
import '../../../../search/presentation/view/screen/search_screen.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({super.key});

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        top: true,
        bottom: true,
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Column(
            children: [
              Container(
                height: 210.h,
                width: double.infinity,
                decoration: BoxDecoration(color: Colors.transparent),
                child: Column(
                  children: [
                    Stack(
                      children: [
                        Positioned(
                          left: 0,
                          top: 0,
                          child: GestureDetector(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: SvgPicture.asset(AppImages.leftArrow),
                          ),
                        ),
                        Align(
                          alignment: Alignment.topCenter,
                          child: Container(
                            height: 140.h,
                            width: 140.w,
                            decoration: BoxDecoration(shape: BoxShape.circle),
                            child: Image.asset(AppImages.user7),
                          ),
                        ),
                        Positioned(
                          right: 0,
                          top: 0,
                          child: GestureDetector(
                            onTap: () {
                              Navigator.pushNamed(
                                context,
                                RouteName.notification,
                              );
                            },
                            child: SvgPicture.asset(AppImages.noti),
                          ),
                        ),
                      ],
                    ),
                    Text(
                      'Jenny Wilson',
                      style: AppTextStyles.title24_800w(color: Colors.white),
                    ),
                    Text(
                      'Student at Dhaka University',
                      style: AppTextStyles.title16_700w(
                        color: AppColor.grayBlack300,
                      ),
                    ),
                  ],
                ),
              ),
              SearchInputField(
                topLabel: 'Profession',
                hintText: 'Student',
                maxLine: 1,
                contentPadding: EdgeInsets.symmetric(horizontal: 10),
              ),
              SizedBox(height: 10,),
              SearchInputField(
                topLabel: 'Organization Name',
                hintText: 'Tesla',
                maxLine: 1,
                contentPadding: EdgeInsets.symmetric(horizontal: 10),
              ),
              SizedBox(height: 10,),
              SearchInputField(
                topLabel: 'Location',
                hintText: 'USA',
                maxLine: 1,
                contentPadding: EdgeInsets.symmetric(horizontal: 10),
              ),
              SizedBox(height: 10,),
              SearchInputField(
                topLabel: 'Professional Bio',
                hintText: 'Description',
                maxLine: 6,
                contentPadding: EdgeInsets.symmetric(horizontal: 10),
                height: 136,
              ),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  PrimaryButton(
                    height: 50,
                    width: 150,
                    text: 'Discard',
                    color: Colors.black38,
                    onTap: () {},
                  ),
                  PrimaryButton(
                    width: 150,
                    height: 50,
                    text: 'Save',
                    onTap: () {
                      showModalBottomSheet(
                        context: context,
                        backgroundColor: Colors.transparent,
                        isScrollControlled: true,
                        builder: (context) {
                          return buildFilterSheet(
                            context,
                            SessionDetailsInProfile(),
                          );
                        },
                      );
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
