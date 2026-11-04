import 'package:e_commerce/components/custom_log_button.dart';
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
          title: Text("Create an account",
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
              SizedBox(height: height * .04,),
              CustomTextFiled(labelText: "Password",
                prefixIcon: Image.asset(AppImages.lockIcon),
                suffixIcon: IconButton(onPressed: (){}, icon: Icon(Icons.remove_red_eye_outlined)),
              ),
              SizedBox(height: height * .04,),
              CustomTextFiled(
                labelText: "ConfirmPassword",
                prefixIcon: Image.asset(AppImages.lockIcon),
                suffixIcon: IconButton(onPressed: (){}, icon: Icon(Icons.remove_red_eye_outlined)),
              ),
              SizedBox(height: height * .03,),
              Text("By clicking the Register button, you agree to the public offer",
                style: AppStyles.medium12Form,),
              SizedBox(height: height * .02,),
              CustomElevatedBottom(text: ("Create Account"), onButonClick: (){}),
              SizedBox(height: height*.04,),
              Center(child: Text("- OR Continue with -")),
              SizedBox(height: height * .02,),
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
                  Text("I Already Have an Account",
                    style: AppStyles.regular12ForgetPassword.copyWith(color: AppColors.greyColor),),
                  TextButton(onPressed: (){
                    // todo => login
                    Navigator.pop(context);
                  }, child: Text("Login",style: AppStyles.regular12ForgetPassword,))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
