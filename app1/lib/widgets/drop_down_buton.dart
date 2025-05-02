import 'package:flutter/material.dart';

class DropDownButon extends StatefulWidget {
  const DropDownButon({super.key});

  @override
  State<DropDownButon> createState() => _DropDownButonState();
}

class _DropDownButonState extends State<DropDownButon> {
  List<String> items = ['one', 'two', 'three', 'four'];
  String dropdownvalue = 'one';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Drop Down Button",
              style: TextStyle(color: Colors.white, fontSize: 30),
            ),
            SizedBox(height: 30),
            DropdownButton<String>(
              value: dropdownvalue,
              style: TextStyle(color: Colors.white, fontSize: 30),
              dropdownColor: Colors.black,
              underline: Container(height: 2, color: Colors.white),
              iconSize: 30,
              items: [
                DropdownMenuItem(value: 'one', child: Text("one")),
                DropdownMenuItem(value: 'two', child: Text("two")),
                DropdownMenuItem(value: 'three', child: Text("three")),
              ],
              onChanged: (String? newvalue) {
                setState(() {
                  dropdownvalue = newvalue!;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
