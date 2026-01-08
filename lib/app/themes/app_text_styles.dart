import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTextStyles {
  AppTextStyles._();

  // primary button Text Style
  static TextStyle primaryButtonText({Color? color}) => GoogleFonts.roboto(fontSize: 18,fontWeight: FontWeight.w500,color: color);
  
  // font style
  static TextStyle title18_600w({Color? color}) => GoogleFonts.roboto(fontSize: 18,fontWeight: FontWeight.w600,color: color);
  static TextStyle title16_400w({Color? color}) => GoogleFonts.roboto(fontSize: 16,fontWeight: FontWeight.w400,color: color);
}

extension TextStyleExtension on TextStyle {
  TextStyle withColor(Color color) => copyWith(color: color);
}
