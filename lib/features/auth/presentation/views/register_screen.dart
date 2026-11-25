import 'package:e_commerce/core/components/custom_log_button.dart';
import 'package:e_commerce/core/utils/app_images.dart';
import 'package:e_commerce/core/utils/app_styles.dart';
import 'package:flutter/material.dart';
import '../../../../core/components/custom_elevated_button.dart';
import '../../../../core/components/custom_text_filed.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_icon.dart';
import '../../../../core/utils/app_text.dart';


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
          title: Text(AppText.createAnAccount,
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
              SizedBox(height: height * .04,),
              CustomTextFiled(labelText: AppText.password,
                prefixIcon: Image.asset(AppIcon.lockIcon),
                suffixIcon: IconButton(onPressed: (){}, icon: Icon(Icons.remove_red_eye_outlined)),
              ),
              SizedBox(height: height * .04,),
              CustomTextFiled(
                labelText: AppText.confirmPassword,
                prefixIcon: Image.asset(AppIcon.lockIcon),
                suffixIcon: IconButton(onPressed: (){}, icon: Icon(Icons.remove_red_eye_outlined)),
              ),
              SizedBox(height: height * .02,),
              CustomElevatedBottom(text: (AppText.createAccount), onButonClick: (){}),
              SizedBox(height: height*.04,),
              Center(child: Text(AppText.continueWith)),
              SizedBox(height: height * .02,),
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
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(AppText.alreadyAccount,
                    style: AppStyles.regular12ForgetPassword.copyWith(color: AppColors.greyColor),),
                  TextButton(onPressed: (){
                    // todo => login
                    Navigator.pop(context);
                  }, child: Text(AppText.login,style: AppStyles.regular12ForgetPassword,))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
