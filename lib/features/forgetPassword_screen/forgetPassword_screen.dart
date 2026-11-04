import 'package:e_commerce/components/custom_elevated_button.dart';
import 'package:e_commerce/components/custom_text_filed.dart';
import 'package:e_commerce/core/utils/app_images.dart';
import 'package:e_commerce/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class ForgetPasswordScreen extends StatefulWidget {
  const ForgetPasswordScreen({super.key});

  @override
  State<ForgetPasswordScreen> createState() => _ForgetPasswordScreenState();
}

class _ForgetPasswordScreenState extends State<ForgetPasswordScreen>
{
  @override
  Widget build(BuildContext context)
  {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Forgot password?",
          style: AppStyles.bold36Black,),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              SizedBox(height: height * .05,),
              CustomTextFiled(
                labelText: "Enter Your Email Address",
                prefixIcon: Image.asset(AppImages.emailIcon),
              ),
              SizedBox(height: height*.06,),
              Text("* We will send you a message to set or reset your new password",
              style: AppStyles.medium12Form,),
              SizedBox(height: height * .04,),
              CustomElevatedBottom(text: "Submit", onButonClick: (){
                // todo => submit
                Navigator.pop(context);
              })
            ],
          ),
        ),
      ),
    );
  }
}
