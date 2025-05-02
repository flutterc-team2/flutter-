import 'package:app1/classes/responsive_ui.dart';
// import 'package:app1/screens/login_screen.dart';
import 'package:app1/widgets/pageview.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    ResponsiveUi.initial(context: context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      // home: LoginScreen(),
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            SizedBox(height: ResponsiveUi.height * 0.1),

            Expanded(child: Pageview()),
          ],
        ),
      ),
    );
  }
}
