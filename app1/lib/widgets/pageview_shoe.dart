import 'package:app1/classes/responsive_ui.dart';
import 'package:app1/widgets/pageview.dart';
import 'package:flutter/material.dart';

class PageviewShow extends StatefulWidget {
  const PageviewShow({super.key});

  @override
  State<PageviewShow> createState() => _PageviewShowState();
}

class _PageviewShowState extends State<PageviewShow> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: ResponsiveUi.height * 0.1),

          Expanded(child: Pageview()),
        ],
      ),
    );
  }
}
