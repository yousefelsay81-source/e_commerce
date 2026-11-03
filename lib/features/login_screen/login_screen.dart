import 'package:e_commerce/components/custom_text_filed.dart';
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
          title: Text("Welcome Back!"),
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
              TextButton(onPressed: (){},
                  child: Text("Forget Password?",style: AppStyles.regular12ForgetPassword,)),
              Container(
                padding: EdgeInsets.symmetric(horizontal: width * .01, vertical: height * .01),
                margin: EdgeInsets.symmetric(horizontal: width * .01, vertical: height * .01),
                width: double.infinity,
                color: AppColors.forgetPasswordColor,
                child: TextButton(onPressed: (){}, child: Text("Login",style: AppStyles.semiBold20White,)),
              )
            ],
          ),
        ),
      ),
    );
  }
}
