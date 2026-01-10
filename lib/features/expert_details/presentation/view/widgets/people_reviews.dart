import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../app/themes/app_text_styles.dart';

class PeopleReview extends StatelessWidget {
  final String name;
  final String comment;
  final String email;
  final String ratings;
  final String users;
  const PeopleReview({
    super.key,
    required this.name,
    required this.comment,
    required this.email,
    required this.ratings,
    required this.users,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            CircleAvatar(child: Image.asset(users)),
            SizedBox(width: 10.w),
            Text(name, style: AppTextStyles.title14_600w(color: Colors.white)),
            Spacer(),
            Icon(Icons.star, color: Colors.orange),
            Icon(Icons.star, color: Colors.orange),
            Icon(Icons.star, color: Colors.orange),
            Icon(Icons.star, color: Colors.orange),
            Icon(Icons.star, color: Colors.orange),
            SizedBox(width: 5.w),
            Text(
              ratings,
              style: AppTextStyles.title14_600w(color: Colors.white),
            ),
          ],
        ),
        SizedBox(height: 10.h),
        Text(
          comment,
          style: AppTextStyles.title16_400w(color: Color(0xff777980)),
        ),
        Text(
          email,
          style: AppTextStyles.title16_400w(color: Color(0xff777980)),
        ),
      ],
    );
  }
}