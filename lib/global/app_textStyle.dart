import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:recipto_page/global/app_colors.dart';

class AppTextStyles {
  static TextStyle header1TextStyle() {
    return GoogleFonts.poppins(
      fontSize: 22,
      fontWeight: FontWeight.w700,
      color: AppColors.kPrimaryTextColor,
    );
  }

  static TextStyle header2TextStyle() {
    return GoogleFonts.poppins(
      fontSize: 16,
      fontWeight: FontWeight.w700,
      color: AppColors.kPrimaryTextColor,
    );
  }

  static TextStyle header3TextStyle() {
    return GoogleFonts.poppins(
      fontSize: 13,
      fontWeight: FontWeight.w600,
      color: AppColors.kPrimaryTextColor,
    );
  }

  static TextStyle header4TextStyle() {
    return GoogleFonts.poppins(
      fontSize: 12,
      fontWeight: FontWeight.w600,
      color: AppColors.kPrimaryTextColor,
    );
  }

  static TextStyle header5TextStyle() {
    return GoogleFonts.poppins(
      fontSize: 14,
      fontWeight: FontWeight.w600,
      color: AppColors.kPrimaryTextColor,
    );
  }

  static TextStyle subHead1TextStyle() {
    return GoogleFonts.poppins(
      fontSize: 12,
      fontWeight: FontWeight.w500,
      color: AppColors.kSecondaryTextColor,
    );
  }

  static TextStyle buttonTextStyle() {
    return GoogleFonts.poppins(
      fontSize: 10,
      fontWeight: FontWeight.w600,
      color: Colors.white,
    );
  }

  static TextStyle subHead2TextStyle() {
    return GoogleFonts.poppins(
      fontSize: 10,
      fontWeight: FontWeight.w500,
      color: AppColors.kSecondaryTextColor,
    );
  }

  static TextStyle subHead3TextStyle() {
    return GoogleFonts.poppins(
      fontSize: 11,
      fontWeight: FontWeight.w500,
      color: AppColors.kSecondaryTextColor,
    );
  }

  static TextStyle footerTextStyle() {
    return GoogleFonts.poppins(
      fontSize: 30,
      fontWeight: FontWeight.w800,
      color: AppColors.kSecondaryTextColor,
    );
  }

  static TextStyle footerSubTextStyle() {
    return GoogleFonts.poppins(
      fontSize: 14,
      fontWeight: FontWeight.w600,
      color: AppColors.kSecondaryTextColor,
    );
  }
}
