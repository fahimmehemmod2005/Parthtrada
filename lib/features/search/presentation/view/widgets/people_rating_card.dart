import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../app/themes/app_text_styles.dart';
import '../../../../../core/constant/app_color.dart';
import '../../../../../core/constant/app_images.dart';

class PeopleRatingCard extends StatelessWidget {
  const PeopleRatingCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 190.h,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        separatorBuilder: (context, index) => SizedBox(width: 12.w),
        itemCount: 10,
        itemBuilder: (context, index) {
          return Container(
              width: 320.w,
              decoration: BoxDecoration(
                color: AppColor.containerColor,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Padding(
                padding:  EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 25,
                          child: Image.asset(AppImages.people),
                        ),
                        SizedBox(width: 10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('John Smith',style: AppTextStyles.title20_800w(color: Colors.white),),
                            Text('CTO at Techcorp',style: AppTextStyles.title16_400w(color: AppColor.grayBlack300),),
                          ],
                        )
                      ],
                    ),
                    SizedBox(height: 10,),
                    Text('"The Al matching was spot-on! Found the perfect expert for our ML project in minutes."',
                      style: AppTextStyles.title12_600w(color: Colors.white),),
                    SizedBox(height: 10,),
                    Row(
                      children: [
                        _star(Icons.star),
                        _star(Icons.star),
                        _star(Icons.star),
                        _star(Icons.star),
                        _star(Icons.star),
                        SizedBox(width: 10,),
                        Text('4.9',style: AppTextStyles.title20_800w(color: Colors.white),)
                      ],
                    ),
                  ],
                ),
              )
          );
        },
      ),
    );
  }
}

Widget _star(IconData icon) {
  return Icon(icon,color: Colors.yellow,);
}