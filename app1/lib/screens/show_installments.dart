import 'package:app1/classes/installment.dart';
import 'package:app1/classes/responsive_ui.dart';
import 'package:flutter/material.dart';

class ShowInstallments extends StatefulWidget {
  const ShowInstallments({super.key});

  @override
  State<ShowInstallments> createState() => _ShowInstallmentsState();
}

class _ShowInstallmentsState extends State<ShowInstallments> {
  List<Installment> data = [];

  void _showAddInstallmentDialog() {
    final amountController = TextEditingController();
    final dateController = TextEditingController();
    final notesController = TextEditingController();

    showDialog(
      context: context,
      builder:
          (context) => Directionality(
            textDirection: TextDirection.rtl,
            child: AlertDialog(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              title: Text('اضافة قسط جديد'),
              content: SizedBox(
                height: 200,
                child: Column(
                  children: [
                    TextField(
                      controller: amountController,
                      decoration: InputDecoration(hintText: "القسط الشهري"),
                    ),
                    TextField(
                      controller: dateController,
                      decoration: InputDecoration(hintText: "الميعاد"),
                    ),
                    TextField(
                      controller: notesController,
                      decoration: InputDecoration(hintText: "ملاحظات"),
                    ),
                  ],
                ),
              ),
              actions: [
                TextButton(
                  onPressed: () {
                    setState(() {
                      data.add(
                        Installment(
                          monthlyAmount: amountController.text,
                          dueDate: dateController.text,
                          notes: notesController.text,
                        ),
                      );
                    });
                    Navigator.pop(context);
                  },
                  child: Text('اضافة'),
                ),
                TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: Text('إلغاء'),
                ),
              ],
            ),
          ),
    );
  }

  @override
  Widget build(BuildContext context) {
    ResponsiveUi.initial(context: context);

    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "ميزان ",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),

          backgroundColor: Colors.amber[50],
        ),
        backgroundColor: Colors.amber[50],
        body: Column(
          children: [
            Align(
              alignment: Alignment.topRight,
              child: CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage("assets/logo (2).png"),
              ),
            ),

            SizedBox(height: 20),

            if (data.isEmpty)
              Column(
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      width: 300,
                      height: 100,
                      decoration: BoxDecoration(
                        color: Colors.greenAccent,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          bottomLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(15),
                        child: Text(
                          "في هذه الغرفه يتم عرض او اضافه او حذف الاقساط الملتزم بها حاليا",
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: ResponsiveUi.height / 40),
                  Text("لا توجد اقساط حاليا", style: TextStyle(fontSize: 40)),
                  SizedBox(height: ResponsiveUi.height / 110),
                  Container(
                    width: ResponsiveUi.width / 1.1,
                    height: ResponsiveUi.height / 2.1,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image(
                        image: AssetImage("assets/no quest.gif"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(22),
                    child: Align(
                      alignment: Alignment.bottomLeft,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          // minimumSize: Size(50, 50),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          backgroundColor: Colors.greenAccent,
                        ),
                        onPressed: () {
                          _showAddInstallmentDialog();
                        },
                        child: Icon(Icons.add, size: 20),
                      ),
                    ),
                  ),
                ],
              ),

            if (data.isNotEmpty)
              Column(
                children: [
                  Table(
                    border: TableBorder.all(),
                    columnWidths: {
                      0: FixedColumnWidth(ResponsiveUi.width / 3),
                      1: FixedColumnWidth(ResponsiveUi.width / 3),
                      2: FixedColumnWidth(ResponsiveUi.width / 3),
                    },
                    defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                    children: [
                      TableRow(
                        decoration: BoxDecoration(color: Colors.amber[100]),
                        children: [
                          Center(child: Text("القسط الشهري")),
                          Center(child: Text("الميعاد")),
                          Center(child: Text("ملاحظات")),
                        ],
                      ),
                      for (var inst in data)
                        TableRow(
                          children: [
                            Center(child: Text(inst.monthlyAmount)),
                            Center(child: Text(inst.dueDate)),
                            Center(child: Text(inst.notes)),
                          ],
                        ),
                    ],
                  ),

                  SizedBox(height: ResponsiveUi.height / 1.8),
                  Padding(
                    padding: const EdgeInsets.all(22),
                    child: Align(
                      alignment: Alignment.bottomLeft,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          // minimumSize: Size(50, 50),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          backgroundColor: Colors.greenAccent,
                        ),
                        onPressed: () {
                          _showAddInstallmentDialog();
                        },
                        child: Icon(Icons.add, size: 20),
                      ),
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
