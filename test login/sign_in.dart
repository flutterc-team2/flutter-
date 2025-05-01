import 'package:flutter/material.dart';
import 'package:task_11/screens/sign_up.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<SignIn> {
  bool isvisible = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 123),
            Text(
              "Sign in",
              style: TextStyle(
                color: Color(0xff4280EF),
                fontSize: 42,
                fontWeight: FontWeight.w700,
              ),
            ),

            Text(
              "Please log in into your account",
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontWeight: FontWeight.w600,
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
                Text(
                  "Forgot Password?",
                  style: TextStyle(
                    color: Color(0xffF78720),
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Spacer(flex: 1),

                TextButton(
                  onPressed: () {
                    setState(() {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SignUp()),
                      );
                    });
                  },
                  child: Text(
                    "Create a new acount",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),

            SizedBox(height: 20),
            MaterialButton(
              onPressed: () {},
              minWidth: 342,
              height: 48,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              color: Color(0xff4280EF),
              child: Text(
                "Sign in",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),

            SizedBox(height: 40),

            MaterialButton(
              onPressed: () {},
              minWidth: 342,
              height: 48,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
                side: BorderSide(color: Color(0xff4280EF)),
              ),
              color: Colors.white,
              child: Text(
                "Sign in with Google",
                style: TextStyle(color: Color(0xff4280EF), fontSize: 16),
              ),
            ),

            SizedBox(height: 20),

            MaterialButton(
              onPressed: () {},
              minWidth: 342,
              height: 48,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
                side: BorderSide(color: Color(0xff4280EF)),
              ),
              color: Colors.white,
              child: Text(
                "Sign in with Facebook",
                style: TextStyle(color: Color(0xff4280EF), fontSize: 16),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
