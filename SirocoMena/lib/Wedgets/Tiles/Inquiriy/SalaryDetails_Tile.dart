import 'package:flutter/material.dart';
import 'package:sirocomena/Pages/Details/Inquiry/Attendance_Details.dart';
import 'package:sirocomena/Pages/Details/Inquiry/SalaryDetails_Details.dart';
import 'package:sirocomena/Pages/HomePage.dart';
import 'package:sirocomena/Wedgets/Tile_Button.dart';

class SalaryDetails_Tile extends StatelessWidget {
  final String Description;
  final String Amount;
  final obj;
  const SalaryDetails_Tile({Key? key, this.Description='', this.Amount='', this.obj}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Tile_Button(
      onPressed: (){
        ApearSearchBox=false;
        Navigator.push(context, MaterialPageRoute(builder: (context) => SalaryDetails_Details(obj: obj,)));
      },
      child: ListTile(
        title: Row(
          children: [
            Icon(Icons.manage_history, size: 25,),
            SizedBox(width: 10,),
            Text(Description),
          ],
        ),
        trailing: Text(Amount),
      ),
    );
  }
}
