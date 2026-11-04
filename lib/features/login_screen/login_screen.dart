import 'package:e_commerce/components/custom_log_button.dart';
import 'package:e_commerce/components/custom_elevated_button.dart';
import 'package:e_commerce/components/custom_text_filed.dart';
import 'package:e_commerce/config/routes.dart';
import 'package:e_commerce/core/utils/app_images.dart';
import 'package:e_commerce/core/utils/app_styles.dart';
import 'package:flutter/material.dart';
import '../../core/utils/app_colors.dart';


class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen>
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
          title: Text("Welcome Back!",
            style: AppStyles.bold36Black,),
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
              TextButton(onPressed: (){
                Navigator.of(context).pushNamed(AppRoutes.forgetPasswordRoute);
              },
                  child: Text("Forget Password?",style: AppStyles.regular12ForgetPassword,)),
              SizedBox(height: height * .03,),
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
              SizedBox(height: height * .03,),
              Center(
                child: Text("Create an Account",
                  style: AppStyles.regular12ForgetPassword.copyWith(color: AppColors.greyColor),),
              ),
              TextButton(onPressed: (){
                Navigator.of(context).pushNamed(AppRoutes.registerRoute);
              }, child: Text("Sign Up",style: AppStyles.regular12ForgetPassword,))
            ],
          ),
        ),
      ),
    );
  }
}
