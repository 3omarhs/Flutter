import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  double x = 0, y = 0, z = 0;
  String oper = '', xx = "", yy = "", input = "";
  button(String func, String label, {double wid = 1/4, double hei = 1/5}){
    return Container(
      width: MediaQuery.of(context).size.width*wid,
      height: MediaQuery.of(context).size.width*hei,
      child: RaisedButton(onPressed: (){
        input += input;
          if(label == "clear"){
            x = 0;
            y = 0;
            z = 0;
            xx = "";
            yy = "";
          }
          else if(label == "equal"){
            x = double.parse(xx);
            y = double.parse(yy);
            if(oper == "+"){
              z = x + y ;
            }
            else if(oper == "-"){
              z = x - y ;
            }
            else if(oper == "*"){
              z = x * y ;
            }
            else if(oper == "/"){
              z = x / y ;
            }
            x = 0;
            y = 0;
          }

          if((func == "+")||(func == "-")||(func == "*")||(func == "/")){
            oper = func;
          }
          else if((func == "1")||(func == "2")||(func == "3")||(func == "4")||(func == "5")||(func == "6")||(func == "7")||(func == "8")||(func == "9")){
            if(oper == ""){
              xx += func;
            }
          }
        },

        child: Text(label, style: TextStyle(fontSize: 35),),),
    );
  }
  del_button(){
    return Container(
        width: MediaQuery.of(context).size.width*(1/4),
        height: MediaQuery.of(context).size.width*(1/5),
        child: RaisedButton(
          onPressed: (){},
          child: Icon(Icons.backspace_outlined, size: 35,),
        )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: Column(
          children: [
            TextField(
              keyboardType: TextInputType.none,
              autofillHints: [input],
            ),
            TextField(
                readOnly: true,
              autofillHints: [z.toString()],
            ),
            Expanded(
              child: Container(
                child: Column(
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height*0.26,
                      alignment: Alignment.bottomCenter,
                      child: Row(
                        children: [
                          button("clear", "C"),
                          button("/", "÷"),
                          button("*", "x"),
                          del_button(),
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        button("7", "7"),
                        button("8", "8"),
                        button("9", "9"),
                        button("-", "-"),
                      ],
                    ),
                    Row(
                      children: [
                        button("4", "4"),
                        button("5", "5"),
                        button("6", "6"),
                        button("+", "+"),
                      ],
                    ),
                    Row(
                      children: [
                        Column(
                          children: [
                            Row(
                              children: [
                                button("1", "1"),
                                button("2", "2"),
                                button("3", "3"),
                              ],
                            ),
                            Row(
                              children: [
                                button("0", "0", wid: 3/4),
                              ],
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            button("equal", "=", hei: 2/5),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
