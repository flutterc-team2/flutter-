import 'package:flutter/material.dart';

class Signin extends StatefulWidget {
  const Signin({super.key});

  @override
  State<Signin> createState() => _SigninState();
}

class _SigninState extends State<Signin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Back",
          style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Sign in",
              style: TextStyle(
                  fontSize: 42,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff4280EF)),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text("Please log in into your account"),
            const SizedBox(
              height: 20,
            ),
            TextFormField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15)),
                  label: Text("Email"),
                  suffix: Icon(Icons.mail)),
            ),
            const SizedBox(
              height: 20,
            ),
            TextFormField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15)),
                  label: Text("password"),
                  suffix: Icon(Icons.password)),
              obscureText: true,
            ),
            const SizedBox(
              height: 20,
            ),
            MaterialButton(
                minWidth: double.infinity,
                height: 70,
                color: Color(0xff4280EF),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                onPressed: () {},
                child: Text(
                  " Sign in ",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ))
          ],
        ),
      ),
    );
  }
}
