import 'package:flutter/material.dart';

import '../core/utils/app_colors.dart';

import 'package:flutter/material.dart';

class CustomLogbuttom extends StatelessWidget {
  final String? iconPath;
  final IconData? iconData;
  final Color? iconColor;
  final VoidCallback onTap;
  CustomLogbuttom({
    super.key,
    required this.iconPath,
    this.iconData,
    this.iconColor,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context)
  {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(30),
      child: Container(
        width: width * .2,
        height: height * .1,
        decoration: BoxDecoration(
          color: AppColors.whiteColor,
          shape: BoxShape.circle,
          border: Border.all(
            color: AppColors.circleAvatarColor,
            width: 1.5,
          ),
        ),
        child: Center(
          child: iconPath != null
              ? Image.asset(
            iconPath!,
            width: 22,
            height: 22,
          )
              : Icon(
            iconData,
            color: iconColor ?? Colors.black,
            size: 24,
          ),
        ),
      ),
    );
  }
}
