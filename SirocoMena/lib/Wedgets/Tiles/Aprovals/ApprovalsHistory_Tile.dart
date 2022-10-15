import 'package:flutter/material.dart';
import 'package:sirocomena/Pages/Details/Approvals/ApprovalsHistory_Details.dart';
import 'package:sirocomena/Pages/Details/Inquiry/Attendance_Details.dart';
import 'package:sirocomena/Pages/HomePage.dart';
import 'package:sirocomena/Wedgets/Tile_Button.dart';

class ApprovalsHistory_Tile extends StatelessWidget {
  final String Employee_Name;
  final String Approval_Type;
  final String Type;
  final String Status;
  final String Employee_Note;
  final obj;
  const ApprovalsHistory_Tile({Key? key, this.Employee_Name='', this.Approval_Type='', this.Type='', this.Status='', this.Employee_Note='', this.obj}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Tile_Button(
      onPressed: (){
        ApearSearchBox=false;
        Navigator.push(context, MaterialPageRoute(builder: (context) => ApprovalsHistory_Details(obj: obj,)));
      },
      child: ListTile(
          title: Row(
            children: [
              Icon(Icons.manage_history, size: 25,),
              SizedBox(width: 5,),
              Text(Employee_Name),
            ],
          ),
          subtitle: SizedBox(
              width: 80,
              child: Row(
                children: [
                  SizedBox(width: 30,),
                  Text('Emp. Note: '+Employee_Note),
                ],
              )
          ),
          trailing: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(Approval_Type+', Type: '+Type),
              Text('Status: '+Status),
            ],
          ),
      ),
    );
  }
}
