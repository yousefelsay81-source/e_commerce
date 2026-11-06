import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import '../../../core/utils/app_colors.dart';

class CustomBanner extends StatelessWidget {
  final List<String> images;

  const CustomBanner({
    super.key,
    required this.images,
  });

  @override
  Widget build(BuildContext context) {
    return ImageSlideshow(
      indicatorColor: AppColors.forgetPasswordColor,
      initialPage: 0,
      indicatorBottomPadding: 8,
      indicatorRadius: 4,
      indicatorPadding: 6,
      isLoop: true,
      indicatorBackgroundColor: AppColors.greyColor,
      width: double.infinity,
      height: 200,
      autoPlayInterval: 3000,
      children: images.map((image) {
        return Image.asset(
          image,
          fit: BoxFit.fill,
        );
      }).toList(),
    );
  }
}