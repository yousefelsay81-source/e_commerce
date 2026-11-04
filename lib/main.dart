import 'package:e_commerce/config/routes.dart';
import 'package:e_commerce/features/forgetPassword_screen/forgetPassword_screen.dart';
import 'package:e_commerce/features/get_started_screen.dart';
import 'package:e_commerce/features/profile_screen/profile_screen.dart';
import 'package:e_commerce/features/register_screen/register_screen.dart';
import 'package:flutter/material.dart';
import 'config/theme.dart';
import 'features/login_screen/login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.lightTheme,
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.routeName,
      routes: {
        AppRoutes.routeName: (context) => ProfileScreen(),
        AppRoutes.getStartedRoute: (context) => GetStartedScreen(),
        AppRoutes.loginRoute: (context) => LoginScreen(),
        AppRoutes.registerRoute: (context) => RegisterScreen(),
        AppRoutes.forgetPasswordRoute: (context) => ForgetPasswordScreen(),
      },
    );
  }
}

