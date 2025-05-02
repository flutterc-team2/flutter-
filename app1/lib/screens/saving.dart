import 'package:app1/classes/responsive_ui.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class organize extends StatelessWidget {
  const organize({super.key});

  @override
  Widget build(BuildContext context) {
    ResponsiveUi.initial(context: context);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                  child: Text(
                    'ميزان ',
                    style: TextStyle(
                      fontSize: 45,
                      //fontFamily: 'Cairo',
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
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
                  left: ResponsiveUi.width * 0.76,
                  child: CircleAvatar(
                    radius: ResponsiveUi.width * 0.08,
                    backgroundColor: Colors.white,
                    child: CircleAvatar(
                      radius: ResponsiveUi.width * 0.065,
                      backgroundImage: AssetImage('assets/logo2.png'),
                    ),
                  ),
                ),
                Positioned(
                  top: ResponsiveUi.height * 0.045,
                  left: ResponsiveUi.width * 0.001,
                  child: Container(
                    width: ResponsiveUi.width * 0.75,
                    height: ResponsiveUi.height * 0.13,
                    // ignore: sort_child_properties_last
                    child: Text(
                      'فى هذه الصفحه يتم عرض افضل نسبه لتنظيم مصروفات من خلال مرتبك ',
                      style: TextStyle(
                        fontSize: 25,
                        fontFamily: 'Gulzar-regular',
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 173, 171, 171),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        bottomRight: Radius.circular(30),
                        bottomLeft: Radius.circular(30),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: ResponsiveUi.height * 0.01),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: ResponsiveUi.width * 0.5,
                  height: ResponsiveUi.height * 0.1,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 173, 171, 171),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Center(
                    child: Text(
                      '2500',
                      style: TextStyle(
                        fontSize: 25,
                        fontFamily: 'Gulzar-regular',

                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: ResponsiveUi.height * 0.01),
            Expanded(
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    SizedBox(width: ResponsiveUi.width * 0.03),
                    Container(
                      width: ResponsiveUi.width * 0.5,
                      height: ResponsiveUi.height * 0.5,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(
                          255,
                          253,
                          253,
                          253,
                        ), // Changed to red color
                        borderRadius: BorderRadius.circular(30),
                        border: Border.all(
                          color: const Color.fromARGB(
                            255,
                            146,
                            144,
                            144,
                          ), // Added black border
                          width: 2.0, // Border width
                        ),
                      ),
                      child: Stack(
                        children: [
                          Positioned(
                            top: ResponsiveUi.height * 0.02,
                            left: ResponsiveUi.width * 0.03,
                            child: Text(
                              'الادخارات و الاتثمارات',
                              style: TextStyle(
                                fontSize: 20,
                                //fontFamily: 'Gulzar-regular',
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          Positioned(
                            top: ResponsiveUi.height * 0.1,
                            left: ResponsiveUi.width * 0.07,
                            child: CircleAvatar(
                              radius:
                                  ResponsiveUi.width *
                                  0.16, // Outer circle radius (smaller size)
                              backgroundColor: const Color.fromARGB(
                                255,
                                173,
                                171,
                                171,
                              ), // Outer circle color
                              child: CircleAvatar(
                                radius: ResponsiveUi.width * 0.15,
                                backgroundColor: const Color.fromARGB(
                                  255,
                                  255,
                                  255,
                                  255,
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      '20.0%',
                                      style: TextStyle(
                                        fontSize: 20, // Adjusted font size
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                      ),
                                    ),
                                    SizedBox(
                                      height:
                                          ResponsiveUi.height *
                                          0.03, // Adjusted spacing
                                    ),
                                    Text(
                                      '500.0',
                                      style: TextStyle(
                                        fontSize: 18, // Adjusted font size
                                        fontWeight: FontWeight.bold,
                                        color: const Color.fromARGB(
                                          255,
                                          152,
                                          151,
                                          151,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            top: ResponsiveUi.height * 0.26,
                            left: ResponsiveUi.width * 0.1,
                            child: Row(
                              children: [
                                Text(
                                  'زياده المدخرات',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                ),
                                Image.asset(
                                  'assets/l9.png',
                                  width: ResponsiveUi.width * 0.09,
                                  height: ResponsiveUi.height * 0.09,
                                ),
                              ],
                            ),
                          ),
                          Positioned(
                            top: ResponsiveUi.height * 0.3,
                            left: ResponsiveUi.width * 0.02,
                            child: Row(
                              children: [
                                Text(
                                  'تعجيل سداد الديون',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                ),
                                Image.asset(
                                  'assets/l10.png',
                                  width: ResponsiveUi.width * 0.09,
                                  height: ResponsiveUi.height * 0.09,
                                ),
                              ],
                            ),
                          ),
                          Positioned(
                            top: ResponsiveUi.height * 0.34,
                            left: ResponsiveUi.width * 0.1,
                            child: Row(
                              children: [
                                Text(
                                  'حالات الطوارئ',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                ),
                                Image.asset(
                                  'assets/l10.png',
                                  width: ResponsiveUi.width * 0.09,
                                  height: ResponsiveUi.height * 0.09,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
