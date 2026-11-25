import 'package:e_commerce/core/components/custom_log_button.dart';
import 'package:e_commerce/config/routes.dart';
import 'package:e_commerce/core/utils/app_styles.dart';
import 'package:e_commerce/core/utils/app_text.dart';
import 'package:flutter/material.dart';
import '../../../../core/components/custom_elevated_button.dart';
import '../../../../core/components/custom_text_filed.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_icon.dart';


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
          title: Text(AppText.welcomeBack,
            style: AppStyles.bold36Black,),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              CustomTextFiled(
                labelText: AppText.usernameOrEmail,
                prefixIcon: Image.asset(AppIcon.userIcon),
              ),
              SizedBox(height: height * .05,),
              CustomTextFiled(labelText: AppText.password,
                prefixIcon: Image.asset(AppIcon.lockIcon),
                suffixIcon: IconButton(onPressed: (){}, icon: Icon(Icons.remove_red_eye_outlined)),
              ),
              TextButton(onPressed: (){
                Navigator.of(context).pushNamed(AppRoutes.forgetPasswordRoute);
              },
                  child: Text(AppText.forgotPassword,style: AppStyles.regular12ForgetPassword,)),
              SizedBox(height: height * .03,),
              CustomElevatedBottom(text: (AppText.login), onButonClick: (){}),
              SizedBox(height: height*.06,),
              Center(child: Text(AppText.continueWith)),
              SizedBox(height: height * .03,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomLogbuttom(iconPath: AppIcon.googleIcon, onTap: (){}),
                  SizedBox(width: width * .01,),
                  CustomLogbuttom(iconPath: AppIcon.iphoneIcon, onTap: (){}),
                  SizedBox(width: width * .01,),
                  CustomLogbuttom(iconPath: AppIcon.facebookIcon, onTap: (){})
                ],
              ),
              SizedBox(height: height * .03,),
              Center(
                child: Text(AppText.createAnAccount,
                  style: AppStyles.regular12ForgetPassword.copyWith(color: AppColors.greyColor),),
              ),
              TextButton(onPressed: (){
                Navigator.of(context).pushNamed(AppRoutes.registerRoute);
              }, child: Text(AppText.signUp,style: AppStyles.regular12ForgetPassword,))
            ],
          ),
        ),
      ),
    );
  }
}
