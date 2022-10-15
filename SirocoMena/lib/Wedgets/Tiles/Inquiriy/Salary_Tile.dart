import 'package:flutter/material.dart';
import 'package:sirocomena/Pages/Details/Inquiry/Salary_Details.dart';
import 'package:sirocomena/Pages/HomePage.dart';
import 'package:sirocomena/Wedgets/Tile_Button.dart';

class Salary_Tiles extends StatelessWidget {
  final String Employee;
  final String Year;
  final String Month;
  final obj;
  const Salary_Tiles({Key? key, this.Employee='', this.Year='', this.Month='', this.obj}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Tile_Button(
      onPressed: (){
        ApearSearchBox=false;
        Navigator.push(context, MaterialPageRoute(builder: (context) => Salary_Details(obj: obj,)));
      },
      child: ListTile(
        title: Row(
          children: [
            Icon(Icons.money, size: 25,),
            SizedBox(width: 10,),
            Text(Employee),
          ],
        ),
        subtitle: Row(children: [
          SizedBox(width: 35,),
          Text(Year+'/'+Month)
        ],),
      ),
    );
  }
}
