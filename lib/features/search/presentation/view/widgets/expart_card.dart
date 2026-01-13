import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../../app/themes/app_text_styles.dart';
import '../../../../../app/widgets/buttons/primary_button.dart';
import '../../../../../app/widgets/containertext/container_text.dart';
import '../../../../../core/constant/app_color.dart';
import '../../../../../core/constant/app_images.dart';
import '../../../../../core/constant/route_name.dart';

class ExpertCard extends StatelessWidget {
  const ExpertCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 310.h,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        separatorBuilder: (context, index) => SizedBox(width: 12.w),
        itemCount: 10,
        itemBuilder: (context, index) {
          return Container(
            width: 307,
            decoration: BoxDecoration(
              color: AppColor.containerColor,
              borderRadius: BorderRadius.circular(12.r),
            ),
            child: Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircleAvatar(
                    radius: 30,
                    child: Image.asset(AppImages.experts),
                  ),
                  Text(
                    'Sarah Chen',
                    style: AppTextStyles.title20_800w(color: Colors.white),
                  ),
                  Text(
                    'Senior Data Scientist at Google',
                    style: AppTextStyles.title16_400w(color: Color(0xff777980)),
                  ),
                  Row(
                    children: [
                      SvgPicture.asset(AppImages.star),
                      SizedBox(width: 5.w),
                      RichText(
                        text: TextSpan(
                          text: '4.9  ',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w800,
                          ),
                          children: [
                            TextSpan(
                              text: '(127 reviews)',
                              style: AppTextStyles.title16_400w(
                                color: Color(0xff777980),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      TextContainer(text: '  Machine Learning  '),
                      SizedBox(width: 10),
                      TextContainer(text: '  Data Science  '),
                    ],
                  ),
                  Row(
                    children: [
                      SvgPicture.asset(AppImages.sched),
                      SizedBox(width: 5.w),
                      Text(
                        ' Available: Mon 2pm...',
                        style: AppTextStyles.title16_400w(
                          color: Color(0xff777980),
                        ),
                      ),
                    ],
                  ),
                  PrimaryButton(
                    text: 'Book \$150/hour',
                    onTap: () {
                      Navigator.pushNamed(context, RouteName.expertDetails);
                    },
                    height: 40,
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
