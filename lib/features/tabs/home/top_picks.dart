import 'package:e_commerce/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

import '../../../core/utils/app_colors.dart';

class TopPicks extends StatelessWidget
{
  String imagePath;
  String nameProduct;
  String descProduct;
  String salary;
  String? discount;
  String? offer;
  String view;
  TopPicks({super.key, required this.imagePath,
    required this.nameProduct, required this.descProduct,
    required this.salary, this.discount, this.offer, required this.view
  });

  @override
  Widget build(BuildContext context)
  {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Container(
      color: AppColors.whiteColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(imagePath,fit: BoxFit.fill,),
          SizedBox(height: height *.01,),
          Text(nameProduct,),
          SizedBox(height: height *.01,),
          Text(descProduct,style: AppStyles.medium12Form.copyWith(fontSize: 10),),
          SizedBox(height: height *.01,),
          Text(salary),
          Row(
            children: [
              Text(discount ?? "",style: AppStyles.regular12black.copyWith(color: AppColors.greyColor),),
              SizedBox(width: width * .02,),
              Text(offer ?? "",style: AppStyles.regular12ForgetPassword.copyWith(fontSize: 10),),
            ],
          ),
          Row(
            children: [
              Icon(Icons.star, color: AppColors.yellowColor,),
              Icon(Icons.star, color: AppColors.yellowColor,),
              Icon(Icons.star, color: AppColors.yellowColor,),
              Icon(Icons.star, color: AppColors.yellowColor,),
              Icon(Icons.star, color: AppColors.yellowColor,),
              SizedBox(width: width * .02,),
              Text(view, style: AppStyles.regular12black.copyWith(color: AppColors.greyColor),),
            ],
          )
        ]
      ),
    );
  }
}
