import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:parthtrada/app/themes/app_text_styles.dart';
import 'package:parthtrada/app/widgets/buttons/primary_button.dart';
import 'package:parthtrada/app/widgets/inputfield/search_input_field.dart';
import 'package:parthtrada/core/constant/app_images.dart';
import '../../../../../core/constant/route_name.dart';

class PaymentMethod extends StatefulWidget {
  const PaymentMethod({super.key});

  @override
  State<PaymentMethod> createState() => _PaymentMethodState();
}

class _PaymentMethodState extends State<PaymentMethod> {
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
                    onTap: (){
                      Navigator.pop(context);
                    },
                    child: SvgPicture.asset(AppImages.leftArrow),
                  ),
                  SizedBox(width: 15.w),
                  Text('Payment Method',style: AppTextStyles.title20_800w(color: Colors.white),)
                ],
              ),
              SizedBox(height: 10),
              Divider(color: Colors.grey,),
              SizedBox(height: 10),
              SearchInputField(
                topLabel: 'Card Number',
                hintText: '----------------',
                contentPadding: EdgeInsets.symmetric(horizontal: 10,vertical: 12),
                maxLine: 1,
                suffixImage: AppImages.scan,
              ),
              SizedBox(height: 10),
              SearchInputField(
                topLabel: 'Given Name',
                hintText: 'Jenny Wilson',
                contentPadding: EdgeInsets.symmetric(horizontal: 10),
                maxLine: 1,
              ),
              SizedBox(height: 10),
              SearchInputField(
                topLabel: 'email',
                hintText: 'wilson@09gail.com',
                contentPadding: EdgeInsets.symmetric(horizontal: 10),
                maxLine: 1,
              ),
              SizedBox(height: 10),
              SearchInputField(
                topLabel: 'Expire in',
                hintText: 'MM/YY',
                contentPadding: EdgeInsets.symmetric(horizontal: 10),
                maxLine: 1,
              ),
              SizedBox(height: 10),
              SearchInputField(
                topLabel: 'CVV/CSC',
                hintText: '----------------',
                contentPadding: EdgeInsets.symmetric(horizontal: 10),
                maxLine: 1,
              ),
              Spacer(),
              PrimaryButton(text: 'Save', onTap: (){
                Navigator.pushNamed(context, RouteName.profile);
              })
            ],
          ),
        ),
      ),
    );
  }
}
