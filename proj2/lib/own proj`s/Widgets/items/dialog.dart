import 'package:flutter/material.dart';
import 'package:proj2/own%20proj%60s/Pages/profile_photo.dart';

class dialog extends StatelessWidget {
  final String img;
  final String name;
  const dialog({Key? key, required this.img, required this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color whatsColor = Color(0xFF075E54);
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      elevation: 0,
      backgroundColor: Colors.transparent,
      child: Stack(
        children: <Widget>[
          Container(
            // height: MediaQuery.of(context).size.width,
            child: Column(children: [
              InkWell(
                onTap:(){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => profile_photo(photo: img, name: name)));
                },
                child: Container(
                  width: 400,
                    height: 335,
                    child: Image.asset(img, fit: BoxFit.cover,)
                ),
              ),
              Container(
                color: Colors.white,
                height: 60,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    IconButton(icon: Icon(Icons.message), color: whatsColor, iconSize: 35, onPressed: (){},),
                    IconButton(icon: Icon(Icons.call), color: whatsColor, iconSize: 35, onPressed: (){},),
                    IconButton(icon: Icon(Icons.video_call), color: whatsColor, iconSize: 35, onPressed: (){},),
                    IconButton(icon: Icon(Icons.info_outline), color: whatsColor, iconSize: 35, onPressed: (){},),
                ],),
              )
            ],
            ),
          ),
          Positioned(
              top: 0,
              right: 0,
              width: MediaQuery.of(context).size.width-60,
              child: Container(
                alignment: Alignment.centerLeft,
                  width: MediaQuery.of(context).size.width,
                  height: 45,
                  color: Colors.black26,
                  padding: EdgeInsets.symmetric(vertical: 5, horizontal: 30),
                  child: Text(name, style: TextStyle(fontSize: 22, color: Colors.white), softWrap: true, overflow: TextOverflow.fade,)
              )
          ),
        ],
      ),
    );
  }
}
