import 'package:e_commerce/components/custom_text_filed.dart';
import 'package:flutter/material.dart';

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
        body: Column(
          children: [
            CustomTextFiled(),
            SizedBox(height: height * .02,),
            CustomTextFiled(),

          ],
        ),
      ),
    );
  }
}
