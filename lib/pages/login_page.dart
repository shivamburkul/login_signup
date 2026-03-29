import 'package:flutter/material.dart';
import 'package:login_signup/pages/splash_screen.dart';
import 'package:login_signup/pages/home_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'signup_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/backimage.jpg"),
                fit: BoxFit.fill,
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CustomerLogin(),
              SizedBox(height: 30),
              OtherSignupMethods(),
              SizedBox(height: 50),
            ],
          ),
        ],
      ),
    );
  }
}

class CustomerLogin extends StatefulWidget {
  CustomerLogin({super.key});

  @override
  State<CustomerLogin> createState() => _CustomerLoginState();
}

class _CustomerLoginState extends State<CustomerLogin> {
  bool isRememberMeChecked = false;
  bool isPassVisible = false;
  var emailtext = TextEditingController();
  var passtext = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: 537,
        width: 350,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.white, width: 3),
                ),
                child: CircleAvatar(
                  backgroundImage: AssetImage("assets/images/user.png"),
                  backgroundColor: Colors.transparent,
                  radius: 50,
                ),
              ),
              SizedBox(height: 15),
              Text(
                "CUSTOMER LOGIN",
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                  letterSpacing: 4,
                ),
              ),
              SizedBox(height: 60),
              TextField(
                controller: emailtext,
                keyboardType: TextInputType.emailAddress,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontFamily: "Merriweathernonitalic",
                  color: Colors.white,
                ),
                decoration: InputDecoration(
                  hintText: "Username",
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
                  prefixIcon: Icon(Icons.email, color: Colors.white),
                ),
              ),
              SizedBox(height: 20),
              TextField(
                controller: passtext,
                obscureText: !isPassVisible,
                keyboardType: TextInputType.visiblePassword,
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
                  prefixIcon: Icon(Icons.lock, color: Colors.white),
                  suffixIcon: IconButton(
                    icon: Icon(
                      isPassVisible ? Icons.visibility : Icons.visibility_off,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      setState(() {
                        isPassVisible = !isPassVisible;
                      });
                    },
                  ),
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: 50,
                    width: 150,
                    child: Row(
                      children: [
                        IconButton(
                          icon: Icon(
                            isRememberMeChecked
                                ? Icons.check_box
                                : Icons.check_box_outline_blank,
                            color: Colors.white,
                            size: 20,
                          ),
                          onPressed: () {
                            setState(() {
                              isRememberMeChecked = !isRememberMeChecked;
                            });
                          },
                        ),
                        Text(
                          "Remember Me",
                          style: TextStyle(
                            fontSize: 13,
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => HomeScreen()),
                      );
                    },
                    child: Text(
                      "Forget Password?",
                      style: TextStyle(
                        fontSize: 13,
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30),
              InkWell(
                child: Container(
                  height: 40,
                  width: 170,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.white, width: 2),
                  ),
                  child: Center(
                    child: Text(
                      "Login",
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
                onTap: () async {
                  SharedPreferences prefs = await SharedPreferences.getInstance();
                  prefs.setBool(SplashScreenState.KeyLogin, true);
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => HomeScreen()),
                  );
                },
              ),
              SizedBox(height: 10),
              Container(
                width: 175,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Dont Have and Account? ",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 10,
                        fontFamily: "Merriweathernonitalic",
                        color: Colors.white,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return SignUpPage();
                            },
                          ),
                        );
                      },
                      child: Text(
                        "Sign Up",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 10,
                          fontFamily: "Merriweathernonitalic",
                          color: Colors.blueAccent,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class OtherSignupMethods extends StatelessWidget {
  OtherSignupMethods({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      width: 300,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            children: [
              Expanded(
                child: Divider(
                  color: Colors.white,
                  thickness: 1,
                  endIndent: 10,
                ),
              ),
              Text(
                "Use Other Methods",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontFamily: "Merriweqathernonitalic",
                  fontSize: 12,
                ),
              ),
              Expanded(
                child: Divider(color: Colors.white, thickness: 1, indent: 10),
              ),
            ],
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {
                  print("Google login");
                },
                child: CircleAvatar(
                  radius: 25,
                  backgroundColor: Colors.transparent,
                  child: Image.network(
                    "https://upload.wikimedia.org/wikipedia/commons/thumb/c/c1/Google_%22G%22_logo.svg/768px-Google_%22G%22_logo.svg.png",
                    height: 45,
                    width: 45,
                  ),
                ),
              ),
              SizedBox(width: 20),
              InkWell(
                onTap: () {
                  print("Facebook login");
                },
                child: CircleAvatar(
                  radius: 25,
                  backgroundColor: Colors.transparent,
                  child: Icon(Icons.facebook, color: Colors.white, size: 50),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
