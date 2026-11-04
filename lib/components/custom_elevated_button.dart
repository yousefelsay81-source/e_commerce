import 'package:flutter/material.dart';

import '../core/utils/app_colors.dart';
import '../core/utils/app_styles.dart';

class CustomElevatedBottom extends StatelessWidget {
  CustomElevatedBottom({super.key , required this.text
    , required this.onButonClick , this.backGroundColor ,
    this.style , this.iconPath});
  String text;
  final VoidCallback? onButonClick;
  Color? backGroundColor;
  TextStyle? style;
  String? iconPath;

  @override
  Widget build(BuildContext context)
  {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: backGroundColor ?? AppColors.forgetPasswordColor,
            padding: EdgeInsets.symmetric(horizontal: width*.06 , vertical: height * .02),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
              side: BorderSide(color: AppColors.transparentColor),
            )
        ),
        onPressed: onButonClick,
        child: Text(text,style: style ?? AppStyles.semiBold20White,),),
    );
  }
}
