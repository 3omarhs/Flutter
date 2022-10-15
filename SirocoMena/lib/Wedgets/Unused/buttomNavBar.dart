import 'package:flutter/material.dart';
import 'package:sirocomena/Pages/HomePage.dart';
import 'package:sirocomena/Pages/Requests.dart';


class buttomNavBar extends StatelessWidget {
  final bool addButton;
  const buttomNavBar({Key? key, this.addButton=false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color text_list_color = color_3;
    void onTabTapped(int index) {
      if (index == 0) {
        print('Back');
        Navigator.of(context).pop();
      }
      else if(index == 1){
        print('Add');
      }
      else if(index == 2){
        print('Search');
        // Navigator.push(context, MaterialPageRoute(builder: (context) => Second()));
        // Navigator.of(context).pop();
        ApearSearchBox = !ApearSearchBox;
        // setState(() {
        //   ApearSearchBox = !ApearSearchBox;
        // });
      }
    }

    void onTabTapped1(int index) {
      if (index == 0) {
        print('Back');
        Navigator.of(context).pop();
      }
    }
    Widget add(){
      if(addButton == true)
      return BottomNavigationBar(
          selectedItemColor: text_list_color,
          unselectedItemColor: text_list_color,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.arrow_back),
              label: 'Back',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.add),
              label: 'ADD',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'Search',
            ),
          ],
          onTap: (index){
            onTabTapped(index);
          }
      );
      else
        return BottomNavigationBar(
            selectedItemColor: text_list_color,
            unselectedItemColor: text_list_color,
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.arrow_back),
                label: 'Back',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.search),
                label: 'Search',
              ),
            ],
            onTap: (index){
              onTabTapped1(index);
            }
        );
    }
    return
      add();
  }
}

