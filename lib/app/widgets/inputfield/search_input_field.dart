import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:parthtrada/app/themes/app_text_styles.dart';
import 'package:parthtrada/core/constant/app_color.dart';

class SearchInputField extends StatelessWidget {
  final String? topLabel;
  final String? hintText;
  final String? imagePath;
  final String? suffixImage;
  final EdgeInsetsGeometry? contentPadding;
  final double? height;
  final int? maxLine;
  final TextEditingController? controller;
  final void Function(String)? onSubmitted;
  final VoidCallback? onSuffixTap;

  const SearchInputField({
    super.key,
    this.hintText,
    this.imagePath,
    this.contentPadding,
    this.height,
    this.maxLine,
    this.controller,
    this.onSubmitted,
    this.topLabel,
    this.suffixImage,
    this.onSuffixTap,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (topLabel != null)
          Text(
            topLabel!,
            style: AppTextStyles.title14_600w(color: Colors.white),
          ),
        if (topLabel != null) SizedBox(height: 5),

        Container(
          height: height,
          width: double.infinity,
          decoration: BoxDecoration(
            color: AppColor.containerColor,
            borderRadius: BorderRadius.circular(12.r),
          ),
          child: TextField(
            cursorColor: Colors.white,
            onSubmitted: onSubmitted,
            controller: controller,
            maxLines: maxLine,
            style: const TextStyle(color: Colors.white),
            decoration: InputDecoration(
              border: InputBorder.none,

              prefixIcon: imagePath != null
                  ? Padding(
                padding: const EdgeInsets.all(15.0),
                child: SvgPicture.asset(imagePath!),
              )
                  : null,
              suffixIcon: suffixImage != null
                  ? GestureDetector(
                onTap: onSuffixTap,
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: SvgPicture.asset(suffixImage!),
                ),
              )
                  : null,
              hintText: hintText,
              hintStyle: const TextStyle(color: Colors.grey),
              contentPadding:
              contentPadding ?? const EdgeInsets.symmetric(vertical: 13),
            ),
          ),
        ),
      ],
    );
  }
}

