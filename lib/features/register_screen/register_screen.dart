import 'package:e_commerce/components/custom_circle_avatar.dart';
import 'package:e_commerce/components/custom_elevated_button.dart';
import 'package:e_commerce/components/custom_text_filed.dart';
import 'package:e_commerce/core/utils/app_images.dart';
import 'package:e_commerce/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

import '../../core/utils/app_colors.dart';


class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen>
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
          title: Text("Create an account"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              CustomTextFiled(
                labelText: "User Name Or Email",
                prefixIcon: Image.asset(AppImages.userIcon),
              ),
              SizedBox(height: height * .05,),
              CustomTextFiled(labelText: "Password",
                prefixIcon: Image.asset(AppImages.lockIcon),
                suffixIcon: IconButton(onPressed: (){}, icon: Icon(Icons.remove_red_eye_outlined)),
              ),
              CustomTextFiled(
                labelText: "ConfirmPassword",
                prefixIcon: Image.asset(AppImages.lockIcon),
                suffixIcon: IconButton(onPressed: (){}, icon: Icon(Icons.remove_red_eye_outlined)),
              ),
              TextButton(onPressed: (){},
                  child: Text("Forget Password?",style: AppStyles.regular12ForgetPassword,)),
              CustomElevatedBottom(text: ("Login"), onButonClick: (){}),
              SizedBox(height: height*.06,),
              Center(child: Text("- OR Continue with -")),
              SizedBox(height: height * .03,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomLogbuttom(iconPath: AppImages.googleIcon, onTap: (){}),
                  SizedBox(width: width * .01,),
                  CustomLogbuttom(iconPath: AppImages.iphoneIcon, onTap: (){}),
                  SizedBox(width: width * .01,),
                  CustomLogbuttom(iconPath: AppImages.facebookIcon, onTap: (){})
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Create an Account",
                    style: AppStyles.regular12ForgetPassword.copyWith(color: AppColors.greyColor),),
                  TextButton(onPressed: (){}, child: Text("Sign Up",style: AppStyles.regular12ForgetPassword,))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
