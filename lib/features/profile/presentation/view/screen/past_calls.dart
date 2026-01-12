import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:parthtrada/core/constant/app_color.dart';
import '../../../../../app/themes/app_text_styles.dart';
import '../../../../../app/widgets/buttons/primary_button.dart';
import '../../../../../core/constant/app_images.dart';

class PastCalls extends StatefulWidget {
  const PastCalls({super.key});

  @override
  State<PastCalls> createState() => _PastCallsState();
}

class _PastCallsState extends State<PastCalls> {
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
                    'Past Calls',
                    style: AppTextStyles.title20_800w(color: Colors.white),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Divider(color: Colors.grey),
              SizedBox(height: 10),
              Container(
                padding: EdgeInsetsGeometry.all(15),
                height: 240,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: AppColor.containerColor,
                  borderRadius: BorderRadius.circular(16.r),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CircleAvatar(radius: 25,child: Image.asset(AppImages.experts),),
                        GestureDetector(
                          onTap: (){},
                          child: Icon(Icons.cancel,color: Colors.white,),
                        ),
                      ],
                    ),
                    Text('Sarah Chen',style: AppTextStyles.title20_800w(color: Colors.white),),
                    Text('Senior Data Scientist at Google',style: AppTextStyles.title16_400w(color: AppColor.grayBlack300),),
                    Row(
                      children: [
                        SvgPicture.asset(AppImages.sched),
                        SizedBox(width: 10,),
                        Text('June 1 Monday 02:00 PM',style: AppTextStyles.title16_400w(color: AppColor.grayBlack300),),
                        Spacer(),
                        Text('30 Min',style: AppTextStyles.title16_700w(color: Colors.white),),
                      ],
                    ),
                    PrimaryButton(text: 'View Summary',height: 40,color: Colors.blueGrey[900],onTap: (){})
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
