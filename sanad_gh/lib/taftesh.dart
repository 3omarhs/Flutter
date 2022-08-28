import 'package:flutter/material.dart';
import 'birthDate.dart';
import 'main.dart';

class Tafteesh extends StatelessWidget {
  const Tafteesh({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //
    // void fun1(){
    //   showDialog<String>(
    //       context: context,
    //       builder: (BuildContext context) => Container(
    //         decoration: BoxDecoration(borderRadius: BorderRadius.circular(55)),
    //         padding: EdgeInsets.all(20),
    //         //color: Color(0xFF023f54),
    //         child: AlertDialog(
    //           title: const Text('الرجاء تعبئة الرقم الوطني او مسح الهوية', textDirection: TextDirection.rtl, style: TextStyle(color: Colors.white),),
    //           //content: const Text(''),
    //           actions: <Widget>[
    //             TextButton(
    //               onPressed: () => Navigator.pop(context, 'OK'),
    //               child: Container(child: Center(child: const Text('عودة', style: TextStyle(color: Color(0xFF023f54), fontSize: 18),)), color: Colors.white, width: double.infinity,),
    //             ),
    //           ],
    //         ),
    //       ));
    // }
    //
    //
    // void fun2(){
    //   showDialog(
    //     context: context,
    //     builder: (BuildContext context) {
    //       return AlertDialog(
    //
    //         shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(30.0))),
    //         backgroundColor: Color(0xFF023f54),
    //         title: const Text('الرجاء تعبئة الرقم الوطني او مسح الهوية', textDirection: TextDirection.rtl, style: TextStyle(color: Colors.white),),
    //         content: TextButton(
    //           onPressed: () => Navigator.pop(context, 'OK'),
    //           child: Container(child: Center(child: const Text('عودة', style: TextStyle(color: Color(0xFF023f54), fontSize: 18),)), height: 30, width: double.infinity,),
    //             style: ButtonStyle(
    //                 shape: MaterialStateProperty.all<RoundedRectangleBorder>(
    //                     RoundedRectangleBorder(
    //                         borderRadius: BorderRadius.circular(30.0),
    //                         side: BorderSide(color: Colors.red)
    //                     )
    //                 ),
    //                 backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
    //               alignment: Alignment.bottomCenter
    //             ),
    //         ),
    //       );
    //     },
    //   );
    // }
    //

    void fun(){
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
              backgroundColor: Color(0xFF023f54),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(32.0))),
              contentPadding: EdgeInsets.only(top: 10.0),
              content: Stack(
                children: <Widget>[
                  Container(
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        SizedBox(
                          height: 75.0,
                        ),

                        Center(
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: new Text('الرجاء تعبئة الرقم الوطني او مسح الهوية', textDirection: TextDirection.rtl, style: TextStyle(color: Colors.white, fontSize: 20),),
                            )//
                        ),

                        SizedBox(
                          height: 75.0,
                          width: 5.0,
                        ),

                        InkWell(
                          child: Container(
                            padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
                            decoration: BoxDecoration(
                              color:Colors.white,
                              borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(32.0),
                                  bottomRight: Radius.circular(32.0)),
                            ),
                            child:  Center(child: Text('عودة', style: TextStyle(color: Color(0xFF023f54), fontSize: 18),))
                          ),
                          onTap:(){
                            Navigator.pop(context);
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              )
          );
        },
      );
    }



    GlobalKey<FormState> foarmKey = new GlobalKey<FormState>();

    final _formKey = GlobalKey<FormState>();
    return Scaffold(
        //resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xFF023f54),
      appBar: AppBar(
        backgroundColor: Color(0xFF023f54),
        brightness: Brightness.dark,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          height: 600,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [

              Padding(
                padding: const EdgeInsets.only(top: 22.0),
                child: SizedBox(
                  width: 250,
                  child: Form(
                    key: foarmKey,
                    child: TextFormField(
                      textAlign: TextAlign.right,
                      decoration: InputDecoration(
                        filled: true,
                        border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(17)),
                        contentPadding: EdgeInsets.fromLTRB(0, 0, 8.0, 15),
                        fillColor: Colors.white,
                        hintStyle: TextStyle(fontSize: 18, ),
                        hintText: "أدخل الرقم الوطني",
                      ),
                      keyboardType: TextInputType.number,
                      validator: (String? value) {
                        if (value!.isEmpty || value.length<10) {
                          return "";
                        }
                        return null;
                      },
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 300,
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(17)),
                  alignment: Alignment.center,
                  width: 170,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      TextButton(
                        onPressed: () {



                          if (foarmKey.currentState!.validate()) {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => BirthDate()));
                          }
                          else{
                            fun();
                          }
                          // if(controlle){

                          //}
                          // Navigator.push(context, MaterialPageRoute(builder: (context) => BirthDate()));
                        },
                        child: Text(
                          "متابعة",
                          style:
                              TextStyle(fontSize: 18, color: Color(0xFF023f54)),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              SizedBox(
                child: Container(
                  child: Text("أو قم بمسح الهوية عن طريق الكاميرا", style: TextStyle(fontSize: 18, color: Colors.white),),
                ),
              ),


              SizedBox(
                width: 300,
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(17)),
                  alignment: Alignment.center,
                  width: 170,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          "مسح الهوية",
                          style: TextStyle(fontSize: 18, color: Color(0xFF023f54)),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              SizedBox(
                width: 300,
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(17)),
                  alignment: Alignment.center,
                  width: 170,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          "الهوية الصحية QR Code مسح",
                          style: TextStyle(fontSize: 18, color: Color(0xFF023f54)),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              SizedBox(
                width: 300,
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(17)),
                  alignment: Alignment.center,
                  width: 170,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          "شهادة المطعوم QR Code",
                          style: TextStyle(fontSize: 18, color: Color(0xFF023f54)),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              SizedBox(
                child: Container(
                  child: TextButton(
                    child: Text("خروج", style: TextStyle(color: Colors.white, fontSize: 20),),
                    onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> MyHomePage()));
                    },
                  ),
                ),
              ),


            ],
          ),
        ),
      ),
    );
  }
}
