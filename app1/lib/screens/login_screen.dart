// import 'dart:math';

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
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xffC4C4C4),
                  ),

                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: "Email",
                      suffixIcon: Icon(Icons.email),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      contentPadding: EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 10,
                      ),
                    ),
                  ),
                ),

                SizedBox(height: 20),

                Container(
                  width: ResponsiveUi.width * 0.8,
                  height: ResponsiveUi.height * 0.05,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xffC4C4C4),
                  ),

                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: "Password",
                      suffixIcon: Icon(Icons.lock),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      contentPadding: EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 10,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),

          Positioned(
            top: ResponsiveUi.height / 1.6,
            left: ResponsiveUi.width / 12,
            child: Row(
              children: [
                Checkbox(value: false, onChanged: (_) {}),
                Text(
                  "Remember me",
                  style: TextStyle(
                    color: Color(0xff252525),
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(width: ResponsiveUi.width * 0.2),

                TextButton(
                  onPressed: () {},
                  child: Text(
                    "Forgot Password?",
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                      color: Color(0xff6C63FF),
                    ),
                  ),
                ),
              ],
            ),
          ),

          Positioned(
            bottom: ResponsiveUi.height / 20,
            left: ResponsiveUi.width / 6,
            child: Column(
              children: [
                ElevatedButton(
                  onPressed: () {},

                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xff6C63FF),
                    minimumSize: Size(
                      ResponsiveUi.width * 0.7,
                      ResponsiveUi.height * 0.05,
                    ),
                  ),
                  child: Text("Login", style: TextStyle(color: Colors.white)),
                ),

                SizedBox(height: ResponsiveUi.height * 0.02),
                Row(
                  children: [
                    Text("New Member?"),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        "Register Now",
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                          color: Color(0xff6C63FF),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
