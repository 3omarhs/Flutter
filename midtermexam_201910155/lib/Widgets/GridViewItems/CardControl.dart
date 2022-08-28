import 'package:flutter/material.dart';
import 'package:midtermexam_201910155/Widgets/GridViewItems/CardData.dart';

class CardControl extends StatelessWidget {

  final CardData choice;
  const CardControl({Key? key ,required this.choice}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){},
      child: Card(
          color: Colors.orange,
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Expanded(
                    child: Icon(choice.icon, size:50.0, color: Colors.white)
                ),
                Text(choice.title, style: TextStyle(color: Colors.white, fontSize: 25),),
              ]
          ),
          ),
      ),
    );
  }
}
