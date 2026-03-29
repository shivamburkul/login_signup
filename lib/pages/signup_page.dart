import 'package:flutter/material.dart';
import 'package:login_signup/pages/login_page.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: CustomerSignup());
  }
}

class CustomerSignup extends StatelessWidget {
  CustomerSignup({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/backimage.jpg"),
          fit: BoxFit.fill,
        ),
      ),
      child: Center(
        child: SizedBox(
          height: 850,
          width: 350,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 95),
              Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.white, width: 3),
                ),
                child: CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage("assets/images/user.png"),
                  backgroundColor: Colors.transparent,
                ),
              ),
              SizedBox(height: 15),
              Text(
                "CUSTOMER SIGNUP",
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                  letterSpacing: 4,
                ),
              ),
              SizedBox(height: 40),
              Padding(
                padding: const EdgeInsets.all(9),
                child: TextField(
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontFamily: "Merriweathernonitalic",
                    color: Colors.white,
                  ),
                  decoration: InputDecoration(
                    hintText: "Name",
                    hintStyle: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey, width: 2),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white, width: 3),
                    ),
                    prefixIcon: Icon(
                      Icons.account_circle,
                      color: Colors.white,
                      size: 28,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(9),
                child: TextField(
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontFamily: "Merriweathernonitalic",
                    color: Colors.white,
                  ),
                  decoration: InputDecoration(
                    hintText: "Email Id",
                    hintStyle: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey, width: 2),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white, width: 3),
                    ),
                    prefixIcon: Icon(
                      Icons.email,
                      color: Colors.white,
                      size: 28,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(9),
                child: TextField(
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontFamily: "Merriweathernonitalic",
                    color: Colors.white,
                  ),
                  decoration: InputDecoration(
                    hintText: "Mobile no",
                    hintStyle: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey, width: 2),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white, width: 3),
                    ),
                    prefixIcon: Icon(
                      Icons.phone,
                      color: Colors.white,
                      size: 28,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(9),
                child: TextField(
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontFamily: "Merriweathernonitalic",
                    color: Colors.white,
                  ),
                  decoration: InputDecoration(
                    hintText: "Password",
                    hintStyle: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey, width: 2),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white, width: 3),
                    ),
                    prefixIcon: Icon(
                      Icons.lock_open,
                      color: Colors.white,
                      size: 28,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 30),
              InkWell(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    border: Border.all(color: Colors.white, width: 2),
                  ),
                  height: 40,
                  width: 170,
                  child: Center(
                    child: Text(
                      "Sign Up",
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
                onTap: () {
                  print("Signed Up");
                },
              ),
              SizedBox(height: 13),
              Container(
                width: 175,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Already Have an Account ?",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 10,
                        fontFamily: "Merriweathernonitalic",
                        color: Colors.white,
                      ),
                    ),
                    GestureDetector(
                      child: Text(
                        "Login",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 10,
                          fontFamily: "Merriweathernonitalic",
                          color: Colors.blueAccent,
                        ),
                      ),
                      onTap: () {
                        Navigator.pop(context);
                      },
                    ),
                  ],
                ),
              ),
              SizedBox(height: 40),
              const UseOtherMethods(),
            ],
          ),
        ),
      ),
    );
  }
}

class UseOtherMethods extends StatelessWidget {
  const UseOtherMethods({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      width: 300,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [OtherSignupMethods()],
      ),
    );
  }
}
