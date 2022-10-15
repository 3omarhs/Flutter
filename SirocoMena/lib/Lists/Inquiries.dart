import 'package:flutter/material.dart';
import 'package:sirocomena/Pages/HomePage.dart';
import 'package:sirocomena/Pages/Inquiries.dart';
import 'package:sirocomena/data.dart';

int item = 0;

class Inquiry extends StatelessWidget {
  const Inquiry({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // List thisList = items[0]['items'] as List;
    // // var approvals = items[2][thisList[1]] as List;
    List indexes=[];

    List thisList = items[0]['items'] as List;
    // items[ind]['items']



    // var approvals = items[2][thisList[1]] as List;
    // var indexes;
    // indexes = [items[0][thisList[0]] as List, items[0][thisList[1]] as List, items[0][thisList[2]] as List, items[0][thisList[3]] as List, items[0][thisList[4]] as List, items[0][thisList[5]] as List, items[0][thisList[6]] as List];

    for(int i=0; i<=thisList.length-1;  i++){
      indexes.add(items[0][thisList[i]] as List);
    }

    // print('Indexes:');
    // print(items[0][thisList[0]] as List);
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      height: MediaQuery.of(context).size.height/1.82, //345,
      child: Flexible(
        child: GridView.count(
          physics: NeverScrollableScrollPhysics(),
          crossAxisCount: 3,
          crossAxisSpacing: 5,
          mainAxisSpacing: 5,
          children: List.generate(thisList.length, (index) {   //items[ind].length
            // print(items[ind]['items'].length);
            return ElevatedButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll<Color>(color_1),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(0.0)
                        )
                    )
                ),
                onPressed: (){
                  ApearSearchBox=false;
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Inquiries(obj: items[0][thisList[index]], ind: index,)));
                },
                child: Column(children: [
                  Flexible(
                    flex: 6,
                    child: (index==1 || index==6)? Container(
                      padding: EdgeInsets.only(top: 10, left: 0),
                      child: Container(
                          alignment: Alignment.center,
                          child: Text(indexes[index].length.toString(), style: TextStyle(fontSize: 40, fontWeight: FontWeight.w400, shadows: [Shadow(color: Colors.cyanAccent, blurRadius: 22)]), textAlign: TextAlign.center,)
                      ),
                    ) : Container(
                      alignment: Alignment.center,
                      padding: EdgeInsets.only(top: 10, left: 0),
                      child: Row(children: [
                        Icon(Icons.quiz_outlined, size: 55, shadows: [Shadow(color: Colors.green, blurRadius: 22)]),  //folder, feed_outlined, article, file_copy
                        // SizedBox(width: 8,),
                        Container(
                            alignment: Alignment.lerp(Alignment.topRight, Alignment.center, 0.5),
                            child: Text(indexes[index].length.toString(), style: TextStyle(fontSize: 20, shadows: [Shadow(color: Colors.cyanAccent, blurRadius: 22)]),textAlign: TextAlign.center,)
                        )
                      ],),
                    ),
                  ),
                  SizedBox(height: 10,),
                  Flexible(
                    flex: 3,
                    child: Container(
                      alignment: Alignment.bottomCenter,
                      child: Text(
                          thisList[index],
                        // 'This is long long long long text.',
                        style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
                      ),
                      padding: EdgeInsets.only(bottom: 5),
                    ),
                  )
                ],)
            );
          }),
        ),
      ),
    );

  }
}
