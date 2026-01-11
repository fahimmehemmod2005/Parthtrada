import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../../app/themes/app_text_styles.dart';
import '../../../../../app/widgets/buttons/primary_button.dart';
import '../../../../../core/constant/app_images.dart';
import '../../../../../core/constant/route_name.dart';

class ConfirmBooking extends StatelessWidget {
  const ConfirmBooking({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          height: 72.h,
          width: 72,
          decoration: BoxDecoration(
            color: Colors.black38,
            borderRadius: BorderRadius.circular(999),
          ),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: SvgPicture.asset(AppImages.confirmGreenCheck),
          ),
        ),
        SizedBox(height: 20.h),
        Text(
          'Confirm Booking',
          style: AppTextStyles.title20_800w(color: Colors.white),
        ),
        SizedBox(height: 10),
        Text(
          'Your season with Sarah Chen is Scheduled for Wed 10 am',
          textAlign: TextAlign.center,
          style: AppTextStyles.title16_400w(color: Color(0xff777980)),
        ),
        SizedBox(height: 20.h),
        Container(
          width: double.infinity,
          height: 240.h,
          decoration: BoxDecoration(
            color: Colors.black38,
            borderRadius: BorderRadius.circular(12.r),
          ),
          child: Padding(
            padding: const EdgeInsets.only(
              top: 10.0,
              bottom: 10,
              left: 20.0,
              right: 20.0,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Booking Summary',
                  style: AppTextStyles.title20_800w(color: Colors.white),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Expert:',
                      style: AppTextStyles.title14_600w(
                        color: Color(0xff777980),
                      ),
                    ),
                    Text(
                      'Sarah Chen',
                      style: AppTextStyles.title14_600w(color: Colors.white),
                    ),
                  ],
                ),
                SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Time:',
                      style: AppTextStyles.title14_600w(
                        color: Color(0xff777980),
                      ),
                    ),
                    Text(
                      'Wed 10am',
                      style: AppTextStyles.title14_600w(color: Colors.white),
                    ),
                  ],
                ),
                SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Session Fee:',
                      style: AppTextStyles.title14_600w(
                        color: Color(0xff777980),
                      ),
                    ),
                    Text(
                      '\$150/hour',
                      style: AppTextStyles.title14_600w(color: Colors.white),
                    ),
                  ],
                ),
                SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Duration:',
                      style: AppTextStyles.title14_600w(
                        color: Color(0xff777980),
                      ),
                    ),
                    Text(
                      '30 min',
                      style: AppTextStyles.title14_600w(color: Colors.white),
                    ),
                  ],
                ),
                Divider(color: Colors.grey),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Total Payment:',
                      style: AppTextStyles.title14_600w(
                        color: Color(0xff777980),
                      ),
                    ),
                    Text(
                      '\$75',
                      style: AppTextStyles.title14_600w(color: Colors.white),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        SizedBox(height: 20),
        PrimaryButton(
          text: 'Done',
          onTap: () {
            Navigator.pushNamed(context, RouteName.search);
          },
        ),
      ],
    );
  }
}
