import 'package:e_commerce/core/utils/app_icon.dart';
import 'package:e_commerce/core/utils/app_styles.dart';
import 'package:flutter/material.dart';
import '../../../../core/components/custom_elevated_button.dart';
import '../../../../core/components/custom_text_filed.dart';
import '../../../../core/utils/app_text.dart';

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
          title: Text(AppText.forgotPassword,
          style: AppStyles.bold36Black,),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              SizedBox(height: height * .05,),
              CustomTextFiled(
                labelText: AppText.emailAddress,
                prefixIcon: Image.asset(AppIcon.emailIcon),
              ),
              SizedBox(height: height*.06,),
              Text(AppText.sendMessage,
              style: AppStyles.medium12Form,),
              SizedBox(height: height * .04,),
              CustomElevatedBottom(text: AppText.submit, onButonClick: (){
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
