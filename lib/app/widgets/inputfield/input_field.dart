import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../themes/app_text_styles.dart';

class TextInputField extends StatelessWidget {
  final String topLebel;
  final String hintText;
  final Widget? suffixIcon;
  final bool? obscureText;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final TextInputType? textInputType;

  const TextInputField({
    super.key,
    required this.topLebel,
    required this.hintText,
    this.suffixIcon,
    this.obscureText,
    this.controller,
    this.validator, this.textInputType,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(topLebel, style: AppTextStyles.title16_400w()),
        SizedBox(height: 8.h),
        TextFormField(
          keyboardType: textInputType,
          decoration: InputDecoration(
            // underline
            border: InputBorder.none,
            hintText: hintText,
            hintStyle: AppTextStyles.title16_400w(color: Color(0xffA5A5AB)),
            suffixIcon: suffixIcon,
            // error border
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12.r),
              borderSide: BorderSide(color: Color(0xffEF6471)),
            ),
          ),
          obscureText: obscureText ?? false,
          controller: controller,
          validator: validator,
        ),
      ],
    );
  }
}
