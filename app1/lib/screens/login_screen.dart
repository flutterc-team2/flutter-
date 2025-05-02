import 'package:app1/classes/responsive_ui.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    ResponsiveUi.initial(context: context);
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: ResponsiveUi.height * 0.1,
            left: ResponsiveUi.width * 0.2,
            child: Image(image: AssetImage("assets/login_screen.png")),
          ),
          Positioned(
            top: ResponsiveUi.height / 4,
            left: ResponsiveUi.width / 3,
            child: Text(
              "Welcome Back",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w500,
                color: Colors.black,
              ),
            ),
          ),
          Positioned(
            top: ResponsiveUi.height / 3.4,
            left: ResponsiveUi.width / 3,
            child: Text(
              "sign in to access your account",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w300,
                color: Colors.black,
              ),
            ),
          ),

          Positioned(
            top: ResponsiveUi.height / 2,
            left: ResponsiveUi.width / 10,
            child: Column(
              children: [
                Container(
                  width: ResponsiveUi.width * 0.8,
                  height: ResponsiveUi.height * 0.05,
                  color: Colors.grey,
                  child: TextFormField(),
                ),

                SizedBox(height: 20),

                Align(
                  alignment: Alignment.center,
                  child: Container(
                    width: ResponsiveUi.width * 0.8,
                    height: ResponsiveUi.height * 0.05,
                    color: Colors.grey,
                    child: TextFormField(),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
