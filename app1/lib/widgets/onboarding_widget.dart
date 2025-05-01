import 'package:flutter/material.dart';

class OnboardingWidget extends StatelessWidget {
  const OnboardingWidget({
    super.key,
    required this.image,
    required this.title,
    required this.subtitle,
  });

  final String image;

  final String title;

  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 56),
        Image.asset(image, width: 307, height: 307),
        SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  title,
                  style: TextStyle(
                    color: Color(0xff252525),
                    fontWeight: FontWeight.w700,
                    fontSize: 36,
                    letterSpacing: -0.32,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  subtitle,
                  style: TextStyle(
                    fontWeight: FontWeight.w300,
                    fontSize: 24,
                    letterSpacing: -0.32,
                    color: Color(0xff252525),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
