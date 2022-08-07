import 'package:flutter/material.dart';
import 'package:proj2/College/for_exam/Widgets/ListViewControl/ListData.dart';

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
