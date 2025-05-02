import 'package:app1/classes/responsive_ui.dart';
import 'package:app1/databaase/sqflite_data.dart';
import 'package:app1/screens/home.dart';
import 'package:app1/screens/register_screen_2.dart';
import 'package:flutter/material.dart';

class LoginScreen2 extends StatefulWidget {
  const LoginScreen2({super.key});

  @override
  State<LoginScreen2> createState() => _LoginScreen2State();
}

class _LoginScreen2State extends State<LoginScreen2> {
  List email = [];
  Mydb mydb = Mydb();

  Future<void> readData() async {
    email.clear();
    List<Map> response = await mydb.readData("SELECT * FROM users");
    email.addAll(response);
    setState(() {});
  }

  @override
  void initState() {
    readData();
    super.initState();
  }

  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  bool obscurePassword = true;
  bool isEmailValid = true;
  bool isPasswordValid = true;
  bool rememberMe = false;

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

  void showCustomSnackBar(
    BuildContext context,
    String message, {
    bool isError = false,
  }) {
    final snackBar = SnackBar(
      content: Text(message),
      backgroundColor: isError ? Colors.red : Colors.green,
      behavior: SnackBarBehavior.floating,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      duration: const Duration(seconds: 3),
    );

    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  @override
  Widget build(BuildContext context) {
    ResponsiveUi.initial(context: context);
    GlobalKey<FormState> formKey = GlobalKey();
    bool emailChecker = false;
    bool passwordChecker = false;

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Form(
            key: formKey,
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
                      top: ResponsiveUi.height * 0.14,
                      left: ResponsiveUi.width * 0.21,
                      child: Text(
                        'Welcome back',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: ResponsiveUi.width * 0.07,
                        ),
                      ),
                    ),
                    Positioned(
                      top: ResponsiveUi.height * 0.18,
                      left: ResponsiveUi.width * 0.2,
                      child: Text(
                        'sign in to access your account',
                        style: TextStyle(
                          color: const Color.fromARGB(255, 163, 161, 161),
                          fontSize: ResponsiveUi.width * 0.042,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: ResponsiveUi.height * 0.13),
                SizedBox(
                  width: ResponsiveUi.width * 0.9,
                  child: TextFormField(
                    controller: emailController,
                    // onChanged: validateEmail,
                    style: TextStyle(fontSize: ResponsiveUi.width * 0.05),
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: const Color.fromARGB(64, 219, 214, 214),
                      suffixIcon: Icon(
                        Icons.email_outlined,
                        color: const Color.fromARGB(255, 156, 156, 156),
                        size: ResponsiveUi.width * 0.09,
                      ),
                      hintText: 'Enter your email',
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
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your email';
                      } else if (!emailChecker) {
                        return 'Email is not found';
                      }
                    },
                  ),
                ),

                SizedBox(height: ResponsiveUi.height * 0.03),

                SizedBox(
                  width: ResponsiveUi.width * 0.9,
                  child: TextFormField(
                    controller: passwordController,
                    // onChanged: validatePassword,
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
                      hintText: 'Password',
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
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter your Password';
                      } else if (!passwordChecker) {
                        return 'Password or email are not correct';
                      }
                    },
                  ),
                ),

                SizedBox(height: ResponsiveUi.height * 0.02),
                Row(
                  children: [
                    Checkbox(
                      value: rememberMe,
                      onChanged: (value) {
                        setState(() {
                          rememberMe = value ?? false;
                        });
                      },
                    ),
                    Text(
                      'Remember me',
                      style: TextStyle(fontSize: ResponsiveUi.width * 0.04),
                    ),
                    SizedBox(width: ResponsiveUi.width * 0.13),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'Forget password?',
                        style: TextStyle(fontSize: 14, color: Colors.blue),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: ResponsiveUi.height * 0.15),
                SizedBox(
                  width: ResponsiveUi.width * 0.9,
                  height: ResponsiveUi.height * 0.065,
                  child: ElevatedButton(
                    onPressed: () {
                      bool isAllowed = false;
                      for (int i = 0; i < email.length; i++) {
                        if (emailController.text.trim().toLowerCase() ==
                                email[i]['email']
                                    .toString()
                                    .trim()
                                    .toLowerCase() &&
                            passwordController.text.trim() ==
                                email[i]['password'].toString().trim()) {
                          isAllowed = true;
                          break;
                        }
                      }

                      if (isAllowed) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Home()),
                        );
                        passwordController.clear();
                        emailController.clear();
                      } else {
                        showCustomSnackBar(
                          context,
                          "Email or password incorrect",
                          isError: true,
                        );
                      }

                      setState(() {});
                    },
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
                      'New member?',
                      style: TextStyle(
                        fontSize: ResponsiveUi.width * 0.04,
                        color: Colors.black,
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => RegisterScreen2(),
                          ),
                        );
                      },
                      child: Text(
                        'Register now',
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
      ),
    );
  }
}
