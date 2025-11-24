import 'package:ecommerce/core/utils/app_route.dart';
import 'package:ecommerce/core/utils/app_theme.dart';
import 'package:ecommerce/feature/ui/auth/login/login_screen.dart';
import 'package:ecommerce/feature/ui/auth/register/register_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoute.loginScreen,
      routes: {
        AppRoute.loginScreen: (context) => LoginScreen(),
        AppRoute.registerScreen: (context) => RegisterScreen(),
      },

      themeMode: ThemeMode.light,
      theme: AppTheme.lightTheme,
    );
  }
}
