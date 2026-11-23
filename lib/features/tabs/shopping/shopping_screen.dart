import 'package:e_commerce/core/utils/app_styles.dart';
import 'package:e_commerce/features/tabs/shopping/custom_size.dart';
import 'package:flutter/material.dart';

import '../../../core/utils/app_images.dart';
import '../home/custom_banner.dart';

class ShoppingScreen extends StatefulWidget {

  ShoppingScreen({super.key});

  @override
  State<ShoppingScreen> createState() => _ShoppingScreenState();
}

class _ShoppingScreenState extends State<ShoppingScreen> {
  int? selectedSize = 7;

  @override
  Widget build(BuildContext context) {
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

          ],
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
