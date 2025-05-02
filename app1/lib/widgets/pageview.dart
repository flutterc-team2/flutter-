import 'package:app1/classes/responsive_ui.dart';
import 'package:app1/screens/Login_screen.dart';
import 'package:app1/widgets/onboarding_widget.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Pageview extends StatefulWidget {
  const Pageview({super.key});

  @override
  State<Pageview> createState() => _PageviewState();
}

class _PageviewState extends State<Pageview> {
  PageController controller = PageController();
  int index = 0;

  @override
  Widget build(BuildContext context) {
    ResponsiveUi.initial(context: context);
    return Stack(
      alignment: Alignment.center,
      children: [
        PageView(
          onPageChanged: (value) {
            setState(() {
              index = value;
            });
          },
          controller: controller,
          physics: BouncingScrollPhysics(),
          children: [
            OnboardingWidget(
              image: "assets/onboarding_1.png",
              title: "",
              subtitle: "",
            ),

            OnboardingWidget(
              image: "assets/onboarding_2.png",
              title: "",
              subtitle: "",
            ),

            OnboardingWidget(
              image: "assets/onboarding_3.png",
              title: "",
              subtitle: "",
            ),
          ],
        ),
        Positioned(
          right: 30,
          bottom: 70,
          child: ElevatedButton(
            onPressed: () {
              setState(() {
                if (index == 2) {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder:
                          (context) => LoginScreen(), // add SignIn Screen here
                    ),
                  );
                } else {
                  controller.nextPage(
                    duration: Duration(milliseconds: 500),
                    curve: Curves.easeInOut,
                  );
                }
                controller.nextPage(
                  duration: Duration(milliseconds: 500),
                  curve: Curves.easeInOut,
                );
              });
            },
            style: ElevatedButton.styleFrom(
              shape: CircleBorder(),
              padding: EdgeInsets.all(20),
              minimumSize: Size(
                ResponsiveUi.width * 0.05,
                ResponsiveUi.height * 0.05,
              ),
              backgroundColor: Color(0xff252525),
            ),

            child:
                index == 2
                    ? Icon(
                      Icons.check,
                      color: Colors.white,
                      size: ResponsiveUi.width * 0.05,
                    )
                    : Icon(
                      Icons.arrow_forward,
                      color: Colors.white,
                      size: ResponsiveUi.width * 0.05,
                    ),
          ),
        ),

        Positioned(
          bottom: 90,
          left: 30,
          child: Center(
            child: SmoothPageIndicator(
              controller: controller,
              count: 3,
              effect: ExpandingDotsEffect(
                activeDotColor: Color(0xff2F2E41),
                dotHeight: 6,
                dotWidth: 6,
                spacing: 6,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
