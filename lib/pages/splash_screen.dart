import 'dart:async';
import 'package:flutter/material.dart';
import 'package:login_signup/pages/home_screen.dart';
import 'package:login_signup/pages/login_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashScreen extends StatefulWidget {
  SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => SplashScreenState();
}

class SplashScreenState extends State<SplashScreen> {
  static const String KeyLogin = 'Login';

  @override
  void initState() {
    super.initState();
    whereToGo();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.network(
          'https://thumbs.dreamstime.com/b/app-testing-icon-monochrome-simple-sign-development-collection-logo-templates-web-design-infographics-277629456.jpg',
          height: 180,
          width: 180,
        ),
      ),
    );
  }

  void whereToGo() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    var isLoggedin = prefs.getBool(KeyLogin);

    Timer(Duration(seconds: 2), () {
      if (isLoggedin != null) {
        if (isLoggedin) {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => HomeScreen()),
          );
        } else {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => LoginPage()),
          );
        }
      } else {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => LoginPage()),
        );
      }
    });
  }
}
