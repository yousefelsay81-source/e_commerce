import 'package:e_commerce/core/utils/app_styles.dart';
import 'package:e_commerce/core/utils/app_text.dart';
import 'package:flutter/material.dart';
import '../../../../../../core/utils/app_colors.dart';
import '../../../../../../core/utils/app_images.dart';
import '../../../widget/home/custom_banner.dart';
import '../../../widget/shopping/custom_bottom.dart';
import '../../../widget/shopping/custom_size.dart';

class ShoppingScreen extends StatefulWidget {

  ShoppingScreen({super.key});

  @override
  State<ShoppingScreen> createState() => _ShoppingScreenState();
}

class _ShoppingScreenState extends State<ShoppingScreen> {
  int? selectedSize = 7;

  @override
  Widget build(BuildContext context)
  {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon: Icon(Icons.arrow_back_ios_new_rounded)),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.shopping_cart_outlined))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomBanner(
                  images: [
                    AppImages.bannerImage1,
                    AppImages.bannerImage2,
                    AppImages.bannerImage1,
                    AppImages.bannerImage2,
                    AppImages.bannerImage1
                  ]
              ),
              SizedBox(height: height * .02,),
              Text("Size: ${selectedSize ?? ""}UK", style: AppStyles.semiBold18Black.copyWith(fontSize: 14),),
              SizedBox(height: height * .01,),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: CustomSize(selectedSize: selectedSize, onSizeChanged: changeSize,),
              ),
              SizedBox(height: height * .01,),
              Text("NIke Sneakers", style: AppStyles.semiBold18Black,),
              SizedBox(height: height * .01,),
              Text("Perhaps the most iconic sneaker of all-time, this original"
                  "Chicago? colorway is the cornerstone to any sneaker"
                  "collection. Made famous in 1985 by Michael Jordan, the"
                  "shoe has stood the test of time, becoming the most"
                  "famous colorway of the Air Jordan 1. This 2015 release saw the"
                  " ...More ",style: AppStyles.medium12Form,),
              SizedBox(height: height * .02,),
              Row(
                children: [
                  CustomBottom(textBottom: AppText.gotoCart, icon: Icons.shopping_cart_outlined,
                      onTap: (){}, circleColor: AppColors.blueColor),
                  SizedBox(width: width * .02,),
                  CustomBottom(textBottom: AppText.buyNow, icon: Icons.touch_app_outlined,
                      onTap: (){}, circleColor: AppColors.blueColor),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  void changeSize(int size)
  {
    setState(() {
      selectedSize = size;
    });
  }
}
