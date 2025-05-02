import 'package:app1/classes/responsive_ui.dart';
import 'package:flutter/material.dart';

class RegisterScreen2 extends StatefulWidget {
  const RegisterScreen2({super.key});

  @override
  State<RegisterScreen2> createState() => _RegisterScreen2State();
}

class _RegisterScreen2State extends State<RegisterScreen2> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  bool obscurePassword = true;
  bool isEmailValid = true;
  bool isPasswordValid = true;
  bool agree = false;
  bool isPhoneNumberValid = true;
  void validateEmail(String value) {
    setState(() {
      isEmailValid = value.contains('@');
    });
  }

  void validatePassword(String value) {
    setState(() {
      isPasswordValid = RegExp(
        r'^(?=.*[a-zA-Z])(?=.*\d)[a-zA-Z\d]+$',
      ).hasMatch(value);
    });
  }

  @override
  Widget build(BuildContext context) {
    ResponsiveUi.initial(context: context);

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: ResponsiveUi.height * 0.1),
              Stack(
                clipBehavior: Clip.none,
                alignment: Alignment.center,
                children: [
                  SizedBox(
                    width: ResponsiveUi.width * 0.9,
                    height: ResponsiveUi.height * 0.2,
                    child: Container(),
                  ),
                  Positioned(
                    top: ResponsiveUi.height * -0.01,
                    left: ResponsiveUi.width * 0.1,
                    child: Image.asset('assets/login_screen.png'),
                  ),
                  Positioned(
                    top: ResponsiveUi.height * 0.13,
                    left: ResponsiveUi.width * 0.20,
                    child: Text(
                      'Get Started',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: ResponsiveUi.width * 0.09,
                      ),
                    ),
                  ),
                  Positioned(
                    top: ResponsiveUi.height * 0.18,
                    left: ResponsiveUi.width * 0.2,
                    child: Text(
                      'by creating a free account',
                      style: TextStyle(
                        color: const Color.fromARGB(255, 163, 161, 161),
                        fontSize: ResponsiveUi.width * 0.042,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: ResponsiveUi.height * 0.04),
              SizedBox(
                width: ResponsiveUi.width * 0.9,
                child: TextField(
                  onChanged: validateEmail,
                  style: TextStyle(fontSize: ResponsiveUi.width * 0.05),
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: const Color.fromARGB(64, 219, 214, 214),
                    suffixIcon: Icon(
                      Icons.person_outline,
                      color: const Color.fromARGB(255, 156, 156, 156),
                      size: ResponsiveUi.width * 0.09,
                    ),
                    hintText: 'Full name',
                    hintStyle: TextStyle(
                      fontSize: ResponsiveUi.width * 0.045,
                      color: const Color.fromARGB(255, 156, 156, 156),
                    ),
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    contentPadding: EdgeInsets.symmetric(
                      vertical: ResponsiveUi.height * 0.019,
                      horizontal: ResponsiveUi.width * 0.04,
                    ),
                  ),
                ),
              ),
              SizedBox(height: ResponsiveUi.height * 0.03),
              SizedBox(
                width: ResponsiveUi.width * 0.9,
                child: TextField(
                  onChanged: validateEmail,
                  style: TextStyle(fontSize: ResponsiveUi.width * 0.05),
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: const Color.fromARGB(64, 219, 214, 214),
                    suffixIcon: Icon(
                      Icons.email_outlined,
                      color: const Color.fromARGB(255, 156, 156, 156),
                      size: ResponsiveUi.width * 0.09,
                    ),
                    hintText: 'Valid email',
                    hintStyle: TextStyle(
                      fontSize: ResponsiveUi.width * 0.045,
                      color: const Color.fromARGB(255, 156, 156, 156),
                    ),
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    contentPadding: EdgeInsets.symmetric(
                      vertical: ResponsiveUi.height * 0.019,
                      horizontal: ResponsiveUi.width * 0.04,
                    ),
                  ),
                ),
              ),
              if (!isEmailValid)
                Padding(
                  padding: const EdgeInsets.only(top: 1),
                  child: Text(
                    'Email must contain @',
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: ResponsiveUi.width * 0.035,
                    ),
                  ),
                ),
              SizedBox(height: ResponsiveUi.height * 0.03),
              SizedBox(
                width: ResponsiveUi.width * 0.9,
                child: TextField(
                  onChanged: validateEmail,
                  style: TextStyle(fontSize: ResponsiveUi.width * 0.05),
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: const Color.fromARGB(64, 219, 214, 214),
                    suffixIcon: Icon(
                      Icons.phone_android_outlined,
                      color: const Color.fromARGB(255, 156, 156, 156),
                      size: ResponsiveUi.width * 0.09,
                    ),
                    hintText: 'Phone number',
                    hintStyle: TextStyle(
                      fontSize: ResponsiveUi.width * 0.045,
                      color: const Color.fromARGB(255, 156, 156, 156),
                    ),
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    contentPadding: EdgeInsets.symmetric(
                      vertical: ResponsiveUi.height * 0.019,
                      horizontal: ResponsiveUi.width * 0.04,
                    ),
                  ),
                ),
              ),
              SizedBox(height: ResponsiveUi.height * 0.03),
              SizedBox(
                width: ResponsiveUi.width * 0.9,
                child: TextField(
                  controller: passwordController,
                  onChanged: validatePassword,
                  obscureText: obscurePassword,
                  style: TextStyle(fontSize: ResponsiveUi.width * 0.05),
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: const Color.fromARGB(64, 219, 214, 214),
                    suffixIcon: IconButton(
                      icon: Icon(
                        obscurePassword
                            ? Icons.visibility_off
                            : Icons.visibility,
                        color: const Color.fromARGB(255, 156, 156, 156),
                        size: ResponsiveUi.width * 0.09,
                      ),
                      onPressed: () {
                        setState(() {
                          obscurePassword = !obscurePassword;
                        });
                      },
                    ),
                    hintText: 'new password',
                    hintStyle: TextStyle(
                      fontSize: ResponsiveUi.width * 0.045,
                      color: const Color.fromARGB(255, 156, 156, 156),
                    ),
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    contentPadding: EdgeInsets.symmetric(
                      vertical: ResponsiveUi.height * 0.019,
                      horizontal: ResponsiveUi.width * 0.04,
                    ),
                  ),
                ),
              ),
              if (!isPasswordValid)
                Padding(
                  padding: const EdgeInsets.only(top: 5),
                  child: Text(
                    'Password must contain letters and numbers',
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: ResponsiveUi.width * 0.035,
                    ),
                  ),
                ),

              SizedBox(height: ResponsiveUi.height * 0.02),
              Row(
                children: [
                  Checkbox(
                    value: agree,
                    onChanged: (value) {
                      setState(() {
                        agree = value ?? false;
                      });
                    },
                  ),
                  Text(
                    'By checking the box you agree to our Terms and Conditions.',
                    style: TextStyle(fontSize: ResponsiveUi.width * 0.023),
                  ),
                  SizedBox(width: ResponsiveUi.width * 0.13),
                ],
              ),
              SizedBox(height: ResponsiveUi.height * 0.02),
              SizedBox(
                width: ResponsiveUi.width * 0.9,
                height: ResponsiveUi.height * 0.065,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: Text(
                    'Next',
                    style: TextStyle(
                      fontSize: ResponsiveUi.width * 0.05,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              SizedBox(height: ResponsiveUi.height * 0.001),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Already a member?',
                    style: TextStyle(
                      fontSize: ResponsiveUi.width * 0.04,
                      color: Colors.black,
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'Log In',
                      style: TextStyle(
                        fontSize: ResponsiveUi.width * 0.04,
                        color: Colors.blue,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
