import 'package:flutter/material.dart';
import 'package:task_11/screens/sign_in.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool isvisible = false;
  bool isChecked = false;
  GlobalKey<FormState> globalKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Row(
          children: [
            IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back_ios_new_rounded),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 123),
            Text(
              "Sign up",
              style: TextStyle(
                color: Color(0xff4280EF),
                fontSize: 42,
                fontWeight: FontWeight.w700,
              ),
            ),

            Text(
              "Please create an account",
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),

            SizedBox(height: 30),

            Text(
              "Name",
              style: TextStyle(
                color: Color(0xff2C2C2C),
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),

            Container(
              height: 48,
              width: 342,
              decoration: BoxDecoration(
                color: Color(0xffE1E1E1),
                borderRadius: BorderRadius.circular(10),
              ),

              child: Padding(
                padding: const EdgeInsets.all(10),
                child: TextFormField(
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'please enter your name';
                    } else {
                      return null;
                    }
                  },
                  decoration: InputDecoration(
                    hintText: "Enter your Name",
                    suffixIcon: Icon(Icons.check),
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),

            SizedBox(height: 30),
            Text(
              "Email",
              style: TextStyle(
                color: Color(0xff2C2C2C),
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),

            Container(
              height: 48,
              width: 342,
              decoration: BoxDecoration(
                color: Color(0xffE1E1E1),
                borderRadius: BorderRadius.circular(10),
              ),

              child: Padding(
                padding: const EdgeInsets.all(10),
                child: TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your email';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    hintText: "Enter your Email",
                    suffixIcon: Icon(Icons.check),
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),

            SizedBox(height: 20),

            Text(
              "Password",
              style: TextStyle(
                color: Color(0xff2C2C2C),
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),

            Container(
              height: 48,
              width: 342,
              decoration: BoxDecoration(
                color: Color(0xffE1E1E1),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your password';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    hintText: "Enter your Password",
                    suffixIcon: Padding(
                      padding: const EdgeInsets.only(bottom: 30),
                      child: IconButton(
                        onPressed: () {
                          setState(() {
                            isvisible = !isvisible;
                          });
                        },
                        icon: Icon(
                          isvisible ? Icons.visibility : Icons.visibility_off,
                          color: Color(0xff4280EF),
                        ),
                      ),
                    ),
                    border: InputBorder.none,
                  ),
                  obscureText: isvisible,
                ),
              ),
            ),

            SizedBox(height: 20),

            Row(
              children: [
                Checkbox(
                  value: isChecked,
                  activeColor: Color(0xff4280EF),
                  onChanged: (bool? value) {
                    setState(() {
                      isChecked = value!;
                    });
                  },
                ),
                Text(
                  "Agree the terms of use and privacy policy",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),

            SizedBox(height: 20),
            MaterialButton(
              onPressed: () {
                if (isChecked) {
                  if (globalKey.currentState!.validate()) {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => SignIn()),
                    );
                  }
                }
              },
              minWidth: 342,
              height: 48,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              color: Color(0xff4280EF),
              child: Text(
                "Sign up",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
