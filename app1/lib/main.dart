import 'package:app1/classes/responsive_ui.dart';
import 'package:app1/screens/Login_screen.dart';
import 'package:app1/screens/home.dart';
import 'package:app1/screens/splash_screen.dart';
import 'package:app1/screens/transfer_bound.dart';
import 'package:app1/widgets/pageview_shoe.dart';
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
    return MaterialApp(debugShowCheckedModeBanner: false, home: Home());
  }
}
