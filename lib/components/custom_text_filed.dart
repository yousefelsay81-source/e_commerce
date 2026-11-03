import 'package:e_commerce/core/utils/app_styles.dart';
import 'package:flutter/material.dart';
import '../core/utils/app_colors.dart';


class CustomTextFiled extends StatelessWidget
{
  Color? borderColor;
  String? hintText;
  TextStyle? hintStyle;
  String? labelText;
  TextStyle? labelStyle;
  int? maxLine;
  Widget? prefixIcon;
  Widget? suffixIcon;
  TextEditingController? controller;
  String? Function(String?)? validator;
  TextInputType? keyboardType;
  bool? showPassword;


  CustomTextFiled({super.key, this.borderColor ,
    this.hintText , this.hintStyle ,
    this.prefixIcon , this.labelStyle , this.labelText,
    this.suffixIcon , this.controller , this.validator , this.maxLine,
    this.keyboardType , this.showPassword
  });

  @override
  Widget build(BuildContext context)
  {
    return TextFormField(
      obscureText: showPassword ?? false,
      keyboardType: keyboardType ?? TextInputType.text,
      maxLines: maxLine ?? 1,
      controller: controller,
      validator: validator,
      cursorColor: AppColors.greyColor,
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide(
              color: borderColor ?? AppColors.greyColor,
              width: 1
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide(
              color: borderColor ?? AppColors.greyColor,
              width: 1
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide(
              color: AppColors.redColor,
              width: 1
          ),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide(
              color: borderColor ?? AppColors.greyColor,
              width: 1
          ),
        ),
        hintText: hintText,
        hintStyle: hintStyle ?? AppStyles.medium12Form,
        prefixIcon: prefixIcon,
        labelText: labelText,
        labelStyle: labelStyle ?? AppStyles.medium12Form,
        suffixIcon: suffixIcon,
      ),
    );
  }
}
