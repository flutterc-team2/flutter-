import 'package:app1/classes/responsive_ui.dart';
import 'package:flutter/material.dart';

class TransferBound extends StatefulWidget {
  const TransferBound({super.key});

  @override
  State<TransferBound> createState() => _TransferBoundState();
}

class _TransferBoundState extends State<TransferBound> {
  TextEditingController bound = TextEditingController();
  String? selectedCurrency;
  double result = 0.0;
  void convertCurrency() {
    final amount = double.tryParse(bound.text) ?? 0.0;
    final rate = moneyFelow[selectedCurrency] ?? 0.0;

    setState(() {
      result = amount * rate;
    });
  }

  @override
  Widget build(BuildContext context) {
    ResponsiveUi.initial(context: context);
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: kPrimaryColor,
        body: ListView(
          scrollDirection: Axis.vertical,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(
                  margin: EdgeInsets.all(40),
                  width: ResponsiveUi.width,
                  height: ResponsiveUi.height * 0.1,
                  child: Align(
                    alignment: Alignment.topRight,
                    child: Text(
                      'ميزان',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: CircleAvatar(
                    radius: 20,
                    backgroundImage: AssetImage("assets/images/th.png"),
                  ),
                ),
                Center(
                  child: Container(
                    width: ResponsiveUi.width * 0.8,
                    height: ResponsiveUi.height * 0.1,
                    decoration: BoxDecoration(
                      color: kPrimaryColor3,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20),
                      ),
                    ),
                    child: Text(
                      'في هذه الغرفه يمكنك تحويل العملات الى قيمتها الدولارية',
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text("اختر العمله المراد تحويلها"),
                    DropdownButton(
                      hint: Text("ختر الدولة"),
                      items:
                          items
                              .map(
                                (e) => DropdownMenuItem(
                                  child: Text("$e"),
                                  value: e,
                                ),
                              )
                              .toList(),
                      onChanged: (val) {
                        selectedCurrency = val;
                        setState(() {});
                      },
                    ),
                  ],
                ),
                Center(
                  child: Container(
                    width: ResponsiveUi.width / 2,
                    height: ResponsiveUi.height * 0.1,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: TextField(
                      controller: bound,
                      decoration: InputDecoration(hintText: "ادخل المبلغ"),
                    ),
                  ),
                ),
                SizedBox(height: 25),
                Center(
                  child: ElevatedButton(
                    onPressed: () {
                      convertCurrency();
                    },
                    child: Text(
                      "تحويل",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 15),
                Center(
                  child: SizedBox(
                    width: 100,
                    height: 100,
                    child: Text("$result  USD"),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
