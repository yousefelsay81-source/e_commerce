import 'package:e_commerce/core/utils/app_icon.dart';
import 'package:flutter/material.dart';
import '../utils/app_images.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget{
  const CustomAppBar({super.key});

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context)
  {
    var width = MediaQuery.of(context).size.width;
    return AppBar(
      leading: IconButton(onPressed: (){}, icon: Icon(Icons.menu)),
      title: Image.asset(AppIcon.logoAppBar),
      centerTitle: true,
      actions: [
        Padding(
          padding: EdgeInsetsGeometry.only(right: width*.02),
          child: InkWell(
            onTap: (){},
            child: CircleAvatar(
              child: Image.asset(AppImages.profileImage),
            ),
          ),
        )
      ],
    );
  }
}
