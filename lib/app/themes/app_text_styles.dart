import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTextStyles {
  AppTextStyles._();

  // primary button Text Style
  static TextStyle primaryButtonText({Color? color}) => GoogleFonts.roboto(
    fontSize: 18,
    fontWeight: FontWeight.w500,
    color: color,
  );

  // text style
  static TextStyle title24_800w({Color? color}) => GoogleFonts.nunitoSans(
    fontSize: 24,
    fontWeight: FontWeight.w800,
    color: color,
  );
  static TextStyle title16_400w({Color? color}) => GoogleFonts.nunitoSans(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    color: color,
  );
  static TextStyle title12_600w({Color? color}) => GoogleFonts.nunitoSans(
    fontSize: 12,
    fontWeight: FontWeight.w600,
    color: color,
  );
  static TextStyle title10_400w({Color? color}) => GoogleFonts.nunitoSans(
    fontSize: 10,
    fontWeight: FontWeight.w400,
    color: color,
  );
  static TextStyle title32_800w({Color? color}) => GoogleFonts.nunitoSans(
    fontSize: 32,
    fontWeight: FontWeight.w800,
    color: color,
  );
  static TextStyle title20_800w({Color? color}) => GoogleFonts.nunitoSans(
    fontSize: 20,
    fontWeight: FontWeight.w800,
    color: color,
  );
  static TextStyle title14_600w({Color? color}) => GoogleFonts.nunitoSans(
    fontSize: 14,
    fontWeight: FontWeight.w600,
    color: color,
  );
  static TextStyle title56_400w({Color? color}) => GoogleFonts.nunitoSans(
    fontSize: 56,
    fontWeight: FontWeight.w600,
    color: color,
  );
}

extension TextStyleExtension on TextStyle {
  TextStyle withColor(Color color) => copyWith(color: color);
}
