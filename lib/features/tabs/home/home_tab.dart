import 'package:e_commerce/components/custom_app_bar.dart';
import 'package:e_commerce/components/custom_text_filed.dart';
import 'package:e_commerce/core/utils/app_images.dart';
import 'package:e_commerce/features/tabs/home/categoryList.dart';
import 'package:e_commerce/features/tabs/home/custom_banner.dart';
import 'package:e_commerce/features/tabs/home/custom_filter_and_sort.dart';
import 'package:e_commerce/components/top_picks.dart';
import 'package:flutter/material.dart';
import '../../../core/utils/app_colors.dart';
import '../../../core/utils/app_styles.dart';

class HomeTab extends StatefulWidget {
  const HomeTab({super.key});

  @override
  State<HomeTab> createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: CustomAppBar(),
      body: Padding(
        padding: EdgeInsets.all(8),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 40,
                child: CustomTextFiled(
                  prefixIcon: Icon(Icons.search),
                  suffixIcon: Icon(Icons.mic),
                  hintText: "Search any Product..",
                  hintStyle: AppStyles.medium12Form,
                ),
              ),
              SizedBox(height: height*.02,),
              Row(
                children: [
                  Text("All Featured",style: AppStyles.semiBold18Black),
                  Spacer(),
                  CustomFilterAndSort(text: "Sort", iconPath: Icons.swap_vert, onPressed: (){}),
                  SizedBox(width: width*.02,),
                  CustomFilterAndSort(text: "Filter", iconPath: Icons.filter_alt_outlined, onPressed: (){}),
                ],
              ),
              SizedBox(height: height*.02,),
              SizedBox(
                height: 70,
                child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index){
                      return CategoryList(text: "Beauty", image: AppImages.categoryImage);
                    },
                    separatorBuilder: (context, index){
                      return SizedBox(width: width*.04,);
                    },
                    itemCount: 10),
              ),
              CustomBanner(
                  images: [
                    AppImages.bannerImage1,
                    AppImages.bannerImage2,
                    AppImages.bannerImage1
                  ]
              ),
              SizedBox(height: height*.03,),
              Row(
                children: [
                  Text("Top Pickers For You", style: AppStyles.bold36Black.copyWith(fontSize: 18),),
                  Spacer(),
                  TextButton(onPressed: (){},
                      child: Text("View all",style: AppStyles.regular12ForgetPassword.copyWith(fontSize: 15),),
                  ),
                  Icon(Icons.arrow_forward, color: AppColors.forgetPasswordColor) 
                ],
              ),
              SizedBox(height: height * .02,),
              SizedBox(
                height: height * .4,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index)
                  {
                    return TopPicks(
                      imagePath: AppImages.productImage,
                      nameProduct: "HRX by Hrithik Roshan",
                      descProduct: "Neque porro quisquam est qui \ndolorem ipsum quia",
                      salary: "₹1500",
                      discount: "₹2499",
                      offer: "40%Off",
                      view: 56890,
                    );
                  },
                  separatorBuilder: (context, index){
                    return SizedBox(width: width*.04,);
                  },
                  itemCount: 10,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
