import 'package:flutter/material.dart';

import '../../../core/utils/app_colors.dart';

class CustomFilterAndSort extends StatelessWidget
{
  String text;
  IconData iconPath;
  VoidCallback onPressed;
  CustomFilterAndSort({super.key, required this.text, required this.iconPath, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: AppColors.whiteColor,
        ),
        margin: EdgeInsetsGeometry.all(8),
        padding: EdgeInsets.symmetric( horizontal: 10, vertical: 6,),
        child: Row(
          children: [
            Text(text),
            Icon(iconPath)
          ],
        ),
      ),
    );
  }
}
