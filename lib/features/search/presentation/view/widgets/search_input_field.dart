import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:parthtrada/core/constant/app_color.dart';

class SearchInputField extends StatelessWidget {
  final String? hintText;
  final String? imagePath;
  final EdgeInsetsGeometry? contentPadding;
  final double? height;
  final int? maxLine;

  const SearchInputField({
    super.key,
    this.hintText,
    this.imagePath,
    this.contentPadding,
    this.height,
    this.maxLine,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColor.containerColor,
        //color: Colors.white,
        borderRadius: BorderRadius.circular(12.r),
      ),
      child: TextFormField(
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
          hintText: hintText,
          hintStyle: const TextStyle(color: Colors.grey),
          contentPadding: contentPadding ?? EdgeInsets.symmetric(vertical: 13),
        ),
      ),
    );
  }
}
