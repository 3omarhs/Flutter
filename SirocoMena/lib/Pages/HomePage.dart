import 'package:flutter/material.dart';
import 'package:sirocomena/Lists/Approvals.dart';
import 'package:sirocomena/Lists/Requests.dart';
import 'package:sirocomena/Lists/Inquiries.dart';
import 'package:sirocomena/Lists/textWithGrid.dart';

final MaterialColor color_0 = Colors.blue;
final Color color_1 = Colors.blue.shade400;
final Color color_2 = Colors.white;
final Color color_3 = Colors.blueGrey;
final Color color_4 = Colors.blue.shade100;
final double TilesSpacing = 8;
bool ApearSearchBox = false;
final double GridItemHeightRatio = 1;
final double GridItemWidthRatio = 1;

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          children: [
            Text(widget.title,style: TextStyle(fontSize: 16, fontWeight: FontWeight.w800),),
            Text('HR & Payroll', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            textWithGrid(obj: Requests()),
            textWithGrid(obj: Approvals()),
            textWithGrid(obj: Inquiry()),
            // Grid_oneLine(ind: 0)
          ],
        ),
      ),
    );
  }
}
