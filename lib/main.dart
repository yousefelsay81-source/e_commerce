import 'package:e_commerce/config/routes.dart';
import 'package:e_commerce/features/auth/presentation/views/forgetPassword_screen.dart';
import 'package:e_commerce/features/get_started_screen.dart';
import 'package:e_commerce/features/home/presentation/view/profile_screen.dart';
import 'package:e_commerce/features/auth/presentation/views/register_screen.dart';
import 'package:flutter/material.dart';
import 'config/theme.dart';
import 'features/auth/presentation/views/login_screen.dart';
import 'features/home/presentation/view/tabs/shopping/shopping_screen.dart';

void main()
{
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
        AppRoutes.shoppingName: (context) => ShoppingScreen(),
      },
    );
  }
}

