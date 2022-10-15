import 'package:flutter/material.dart';
import 'package:sirocomena/Pages/Details/Inquiry/Attendance_Details.dart';
import 'package:sirocomena/Pages/Details/Inquiry/PersonalInfo_Details.dart';
import 'package:sirocomena/Pages/HomePage.dart';
import 'package:sirocomena/Wedgets/Tile_Button.dart';

class PersonalInfo_Tiles extends StatelessWidget {
  final String FirstName;
  final String SecondName;
  final String ThirdName;
  final String LastName;
  final String Gender;
  final String Nationality;
  final String PhoneNumber;
  final obj;
  const PersonalInfo_Tiles({Key? key, this.FirstName='', this.SecondName='', this.ThirdName='', this.LastName='', this.Gender='', this.Nationality='', this.PhoneNumber='', this.obj}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String name = FirstName+' '+SecondName+' '+ThirdName+' '+LastName;
    return Tile_Button(
      onPressed: (){
        ApearSearchBox=false;
       Navigator.push(context, MaterialPageRoute(builder: (context) => PersonalInfo_Details(obj: obj,)));
      },
      child: ListTile(
        title: Row(
          children: [
            Icon(Icons.person_outline, size: 25,),
            SizedBox(width: 5,),
            Text(name),
          ],
        ),
        subtitle: Row(children: [
          SizedBox(width: 30,),
          Text(Gender+', '+Nationality)
        ],),
        trailing: Column(children: [
          Text(PhoneNumber),
        ],),
      ),
    );
  }
}
