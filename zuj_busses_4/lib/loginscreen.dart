import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'devpage.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String username = "omar";
  String pass = "123";
  // static var usernameController = new TextEditingController();
  var formKey = GlobalKey<FormState>();
  var formKey1 = GlobalKey<FormState>();

  bool rememberpwd = false;
  bool sec = true;
  var visable = Icon(
    Icons.visibility,
    color: Color(0xff4c5166),
  );
  var visableoff = Icon(
    Icons.visibility_off,
    color: Color(0xff4c5166),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: GestureDetector(
          child: Stack(
            children: [
              Container(
                height: double.infinity,
                width: double.infinity,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color(0xff65b0bb),
                      Color(0xff5a9ea8),
                      Color(0xff508c95),
                      Color(0xff467b82),
                      Color(0xff3c6970),
                      Color(0xff32585d),
                      Color(0xff28464a),
                    ],
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(right: 20, left: 20),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        SizedBox(height: 100,),
                        Text(
                          "Welocme Deelopper! ☺️",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 80,),
                        buildEmail(),
                        SizedBox(height: 30,),
                        buildPassword(),
                        SizedBox(height: 15,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            buildRememberassword(),
                            buildForgetPassword()
                          ],
                        ),
                        SizedBox(height: 20,),
                        buildLoginButton(),
                        SizedBox(height: 0,),
                        buildBackButton(),

                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildEmail() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Username",
          style: TextStyle(
              color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 10,),
        Container(
          height: 60,
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(

              color: Color(0xffebefff),
              borderRadius: BorderRadius.circular(10),
              boxShadow: [BoxShadow(
                color: Colors.black26,
                offset: Offset(0, 2),
              )]
          ),
          child: Form(
            key: formKey,
            child: TextFormField(
              validator: (value) {
                if (value != username) {
                  return 'wrong username';
                }
              else if (value == null || value.isEmpty) {
                return 'Please enter some text';
              }
              else
                return null;
              },
              keyboardType: TextInputType.emailAddress,
              style: TextStyle(color: Colors.black),
              decoration: InputDecoration(
                  border: InputBorder.none,
                  contentPadding:EdgeInsets.only(top: 14),
                  prefixIcon: Icon(Icons.perm_identity,color: Color(0xff4c5166),),
                  hintText: 'Username',hintStyle: TextStyle(color: Colors.black38)
              ),

            ),
          ),
        ),
      ],
    );
  }
  Widget buildPassword() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Password", style: TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.bold
        ),),
        SizedBox(height: 10,),
        Container(
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
            color: Color(0xffebefff),
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                  color: Colors.black26,
                  blurRadius: 6,
                  offset: Offset(0, 2)
              )
            ],
          ),
          height: 60,
          child: Form(
            key: formKey1,
            child: TextFormField(
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'password cannot be empty';
                }
                else if (value != pass) {
                  return 'wrong password';
                }
                else
                  return null;
              },
              obscureText: sec,
              style: TextStyle(
                  color: Colors.black
              ),
              decoration: InputDecoration(
                  suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        sec = !sec;
                      });
                    },
                    icon: sec ? visableoff : visable,


                  ),
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.only(top: 14),
                  prefixIcon: Icon(Icons.vpn_key,
                    color: Color(0xff4c5166),
                  ),
                  hintText: "pwd",
                  hintStyle: TextStyle(
                      color: Colors.black38
                  )
              ),
            ),
          ),
        )
      ],
    );
  }
  Widget buildRememberassword(){
    return Container(
      height: 20,
      child: Row(
        children: [
          Theme(data: ThemeData(unselectedWidgetColor: Colors.white),
              child: Checkbox(
                value:  rememberpwd,
                checkColor: Colors.blueGrey,
                activeColor: Colors.white,
                onChanged: (value)
                {
                  setState(() {
                    if(value == false)
                      rememberpwd=false;
                    else
                      rememberpwd=true;
                  });
                },
              )),
          Text("Remember me", style: TextStyle(
              fontWeight: FontWeight.bold, color: Colors.white),),
        ],
      ),
    );
  }
  Widget buildForgetPassword(){
    return Container(
      alignment: Alignment.centerRight,
      child: TextButton(child: Text("Forget Password !",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white)),onPressed: (){},),
    );
  }
  Widget buildLoginButton(){
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 25),
      child: Container(
        width: double.infinity,
        child:  RaisedButton(
          onPressed: (){
            if ((formKey.currentState!.validate())&&(formKey1.currentState!.validate())) {
              ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Processing Data')),);
              Navigator.push(context, MaterialPageRoute(builder: (context) => DevPage()));
            }
          },
          elevation: 5,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          color:Color(0xff3c6970),
          padding: EdgeInsets.all(30),
          child: Text("Login", style: TextStyle(fontSize: 10,
              color: Colors.white,
              fontWeight: FontWeight.bold),),
        ),
      ),
    );
  }
  Widget buildBackButton(){
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 25),
      child: Container(
        width: double.infinity,
        child:  RaisedButton(
          onPressed: (){
            Navigator.pop(context);
          },
          elevation: 5,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          color:Color(0xff3c6970),
          padding: EdgeInsets.all(30),
          child: Text("Back", style: TextStyle(fontSize: 10,
              color: Colors.white,
              fontWeight: FontWeight.bold),),
        ),
      ),
    );
  }
}