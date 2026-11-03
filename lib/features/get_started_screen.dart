import 'package:e_commerce/components/custom_elevated_button.dart';
import 'package:e_commerce/core/utils/app_images.dart';
import 'package:e_commerce/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class GetStartedScreen extends StatelessWidget {
  const GetStartedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              'assets/unsplash_fouVDmGXoPI.png',
              fit: BoxFit.cover,
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                "You want\n Authentic, here\n you go!",
                textAlign: TextAlign.center,
                style: AppStyles.semiBold20White.copyWith(fontSize: 34),
              ),
              SizedBox(height: height * .05),
              Text(
                "Find it here, buy it now!",
                style: AppStyles.semiBold20White.copyWith(fontSize: 14),
              ),
              SizedBox(height: height * .05),
              Padding(
                padding: const EdgeInsets.all(32),
                child: CustomElevatedBottom(
                  text: "Get Started",
                  onButonClick: () {

                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
