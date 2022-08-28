import 'package:midtermexam_201910155/Widgets/ListViewControl/ListData.dart';
import 'package:flutter/material.dart';

class ListCard extends StatelessWidget {
  final Item item;
  const ListCard({Key? key,required  this.item}) :assert(item!=null), super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(child:
      Card(
        elevation: 0.0,
      child: ListTile(
        onTap: (){},
        hoverColor: Colors.deepPurple,
        textColor:Colors.yellow,
       // leading: Image.network(item.image),
        title:  Text(item.name),
        subtitle: Text(item.desc),
        trailing: Text("\$${item.price}"),

      ),
    ),
    );
  }
}
