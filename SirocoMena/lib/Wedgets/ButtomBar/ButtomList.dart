import 'package:flutter/material.dart';
import 'package:sirocomena/Pages/HomePage.dart';

class ButtomList extends StatefulWidget {
  final bool AddButton;
  final bool SearchButton;
  final action1;
  final action2;
  final action3;
  const ButtomList({Key? key, this.AddButton=false, this.action1=null, this.action2=null, this.action3=null, this.SearchButton=false}) : super(key: key);

  @override
  State<ButtomList> createState() => _ButtomListState();
}

class _ButtomListState extends State<ButtomList> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: MediaQuery.of(context).size.width,
      height: 45,
      alignment: Alignment.center,
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: widget.AddButton==true? Row(
          // mainAxisAlignment: MainAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
                onPressed: widget.action1,
                child: Icon(Icons.arrow_back_sharp, color: color_2, size: 35,),
            ),
             ElevatedButton(
              onPressed: widget.action2,
              child: Icon(Icons.add, color: color_2, size: 35,),
            ),
            ElevatedButton(
              onPressed: widget.action3,
              child: Icon(Icons.search, color: color_2, size: 35,),
            )
        ],
        ) : widget.SearchButton==true? Row(
          // mainAxisAlignment: MainAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              onPressed: widget.action1,
              child: Icon(Icons.arrow_back_sharp, color: color_2, size: 35,),
            ),
            ElevatedButton(
              onPressed: widget.action3,
              child: Icon(Icons.search, color: color_2, size: 35,),
            )
          ],
        ) : Row(
          // mainAxisAlignment: MainAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              onPressed: widget.action1,
              child: Icon(Icons.arrow_back_sharp, color: color_2, size: 35,),
            ),
          ],
        )
      ),
    );
  }
}
