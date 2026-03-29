import 'package:flutter/material.dart';
import 'package:login_signup/pages/login_page.dart';
import 'package:login_signup/pages/splash_screen.dart';

void main() {
  runApp(const LoginSignup());
}

class LoginSignup extends StatelessWidget {
  const LoginSignup({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Login & Signup Page",
      theme: ThemeData(primarySwatch: Colors.blue),
      debugShowCheckedModeBanner: false,
      home: SplashScreen()
    );
  }
}
