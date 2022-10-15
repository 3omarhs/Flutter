import 'package:flutter/material.dart';
import 'package:sirocomena/Pages/HomePage.dart';
import 'package:sirocomena/data.dart';
// import 'package:project1/Pages/HomePage.dart';
// import 'package:project1/data.dart';

class ListOfContent extends StatelessWidget {
  final int ind;   //index
  const ListOfContent({Key? key, required this.ind}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final mapListCount = items.map((key, value) => MapEntry(key, value?.length));
    return Flexible(
      child: GridView.count(
        crossAxisCount: 3,
        crossAxisSpacing: 5,
        mainAxisSpacing: 5,
        children: List.generate(5, (index) {   //items[ind].length
          // print(items[ind]['items'].length);
          return ElevatedButton(
              style: ButtonStyle(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(0.0)
                      )
                  )
              ),
              onPressed: (){},
              child: Container(
                child: Column(children: [
                  Flexible(
                    flex: 4,
                    child: Container(
                      padding: EdgeInsets.only(top: 10),
                      child: Row(children: [
                        Icon(Icons.feed_outlined, size: 55),  //folder, feed_outlined, article, file_copy
                        Text('5', style: TextStyle(fontSize: 20),)
                      ],),
                    ),
                  ),
                  SizedBox(height: 10,),
                  Flexible(
                    flex: 2,
                    child: Text('This is long long long long text.',style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400),),
                  )
                ],),
              )
          );
        }),
      ),
    );

  }
}
