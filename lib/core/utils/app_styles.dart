import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'app_colors.dart';

class AppStyles
{
  static TextStyle medium12Form = GoogleFonts.inter(
      fontWeight: FontWeight.w500,fontSize: 12,color: AppColors.textFormFiledColor
  );
  static TextStyle regular12ForgetPassword = GoogleFonts.inter(
      fontWeight: FontWeight.w400,fontSize: 12,color: AppColors.forgetPasswordColor
  );
  static TextStyle semiBold20White = GoogleFonts.inter(
      fontWeight: FontWeight.w700,fontSize: 20,color: AppColors.whiteColor
  );
}