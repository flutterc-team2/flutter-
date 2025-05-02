import 'package:app1/classes/responsive_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  bool isObscured = true;
  Icon icos = Icon(Icons.remove_red_eye);
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
              "Get Start",
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
              "Create a free account",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w300,
                color: Colors.black,
              ),
            ),
          ),

          Positioned(
            top: ResponsiveUi.height / 2.5,
            left: ResponsiveUi.width / 10,
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Color(0xffC4C4C4),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  width: ResponsiveUi.width * 0.8,
                  height: ResponsiveUi.height * 0.05,
                  child: TextFormField(
                    decoration: InputDecoration(
                      //label: Text("full Name"),
                      hintText: "Full Name",
                      suffixIcon: Icon(Icons.person),
                      border: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      contentPadding: EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 5,
                      ),
                    ),
                  ),
                ),

                SizedBox(height: 20),
                Container(
                  decoration: BoxDecoration(
                    color: Color(0xffC4C4C4),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  width: ResponsiveUi.width * 0.8,
                  height: ResponsiveUi.height * 0.05,
                  child: TextFormField(
                    decoration: InputDecoration(
                      // label: Text("full Name"),
                      hintText: "Valid Email",
                      suffixIcon: Icon(Icons.mail),

                      border: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      contentPadding: EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 5,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  decoration: BoxDecoration(
                    color: Color(0xffC4C4C4),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  width: ResponsiveUi.width * 0.8,
                  height: ResponsiveUi.height * 0.05,
                  child: TextFormField(
                    keyboardType: TextInputType.number,
                    inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                    decoration: InputDecoration(
                      //label: Text("full Name"),
                      hintText: "phone number",
                      suffixIcon: Icon(Icons.phone_android),
                      border: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      contentPadding: EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 5,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  decoration: BoxDecoration(
                    color: Color(0xffC4C4C4),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  width: ResponsiveUi.width * 0.8,
                  height: ResponsiveUi.height * 0.05,
                  child: TextFormField(
                    obscureText: isObscured,
                    decoration: InputDecoration(
                      hintText: "Strong Password",
                      suffixIcon: SizedBox(
                        width: 80, // Prevent layout issues
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            IconButton(
                              icon: Icon(
                                isObscured
                                    ? Icons.visibility_off
                                    : Icons.visibility,
                              ),
                              onPressed: () {
                                setState(() {
                                  isObscured = !isObscured;
                                });
                              },
                            ),
                            Icon(Icons.lock),
                          ],
                        ),
                      ),
                      border: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      contentPadding: EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 5,
                      ),
                    ),
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
