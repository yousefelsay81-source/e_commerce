import 'package:e_commerce/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/app_styles.dart';

class CustomBottom extends StatelessWidget {
  String textBottom;
  IconData icon;
  Color circleColor;
  VoidCallback onTap;
  CustomBottom({super.key, required this.textBottom, required this.icon, required this.onTap, required this.circleColor});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: width * .04, vertical: height * .01),
        decoration: BoxDecoration(
          color: circleColor,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Row(
          children: [
            Icon(icon,color: AppColors.whiteColor,),
            SizedBox(width: width * .03,),
            Text(textBottom, style: AppStyles.medium16white,)
          ],
        ),
      ),
    );
  }
}
