import 'package:flutter/material.dart';
import 'package:sirocomena/Pages/HomePage.dart';
import 'package:sirocomena/Pages/Requests.dart';
import 'package:sirocomena/data.dart';
// import 'package:project1/Pages/HomePage.dart';
// import 'package:project1/data.dart';

int item = 0;

class Requests extends StatelessWidget {
  const Requests({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List thisList = items[1]['items'] as List;
    // var approvals = items[2][thisList[1]] as List;
    var indexes = [items[1][thisList[0]] as List, items[1][thisList[1]] as List, items[1][thisList[2]] as List];

    // final mapListCount = items.map((key, value) => MapEntry(key, value?.length));
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      height: MediaQuery.of(context).size.height/5.5,// 130,
      child: Flexible(
        child: GridView.count(
          physics: NeverScrollableScrollPhysics(),
          crossAxisCount: 3,
          crossAxisSpacing: 5,
          mainAxisSpacing: 5,
          childAspectRatio: (GridItemWidthRatio / GridItemHeightRatio),
          children: List.generate(thisList.length, (index) {   //items[ind].length
            // print(items[ind]['items'].length);
            return SizedBox(
              width: 20,
              child: ElevatedButton(
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
                    Navigator.push(context, MaterialPageRoute(builder: (context) => RequestsP(obj: items[1][thisList[index]], ind: index,)));
                  },
                  child: SizedBox(
                    width: 100,
                    child: Column(children: [
                      Flexible(
                        flex: 6,
                        child: index==1? Container(
                          padding: EdgeInsets.only(top: 10, left: 0),
                          child: Container(
                              alignment: Alignment.center,
                              child: Text(indexes[index].length.toString(), style: TextStyle(fontSize: 40, fontWeight: FontWeight.w400, shadows: [Shadow(color: Colors.cyanAccent, blurRadius: 22)]), textAlign: TextAlign.center,)
                          ),
                        ) : Container(
                          alignment: Alignment.center,
                          padding: EdgeInsets.only(top: 10, left: 0),
                          child: Row(children: [
                            Icon(Icons.send_to_mobile_outlined, size: 55, shadows: [Shadow(color: Colors.purple, blurRadius: 22)]),  //folder, feed_outlined, article, file_copy
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
                              style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
                            ),
                          padding: EdgeInsets.only(bottom: 5),
                        ),
                      )
                    ],),
                  )
              ),
            );
          }),
        ),
      ),
    );

  }
}
