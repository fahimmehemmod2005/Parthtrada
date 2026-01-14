
import 'package:flutter/material.dart';
import 'package:parthtrada/core/constant/route_name.dart';

import '../../../../../app/themes/app_text_styles.dart';
import '../../../../../app/widgets/buttons/primary_button.dart';
import '../../../../../core/constant/app_color.dart';

class BottomNavContainer extends StatelessWidget {
  const BottomNavContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 160,
      padding: EdgeInsets.only(left: 20, right: 20, bottom: 20),
      color: Color(0xff191919),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 5),
          Text(
            'Jenny Wilson',
            style: AppTextStyles.title20_800w(color: Colors.white),
          ),
          Text(
            'Wants to take your consultation on June 13th at 3 PM. For 30 Min',
            style: AppTextStyles.title14_600w(color: AppColor.grayBlack300),
          ),
          Spacer(),
          Row(
            children: [
              Expanded(
                child: PrimaryButton(
                  text: 'Decline',
                  onTap: () {
                    Navigator.pop(context);
                  },
                  color: AppColor.containerColor,
                ),
              ),
              SizedBox(width: 10),
              Expanded(
                child: PrimaryButton(text: 'Accept', onTap: () {
                  Navigator.pushNamed(context, RouteName.home);
                }),
              ),
            ],
          ),
        ],
      ),
    );
  }
}