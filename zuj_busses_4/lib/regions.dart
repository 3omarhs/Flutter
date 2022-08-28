import 'package:flutter/material.dart';
import 'dart:math';
import 'package:url_launcher/url_launcher.dart';
import 'busses_places.dart';


class Regions extends StatefulWidget {
  Regions({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _RegionsState createState() => _RegionsState();
}

class _RegionsState extends State<Regions> {
  Map get_place() {
    if (widget.title == "Amman") {
      return amman_list;
    } else if (widget.title == "Sahab") {
      return sahab_list;
    } else if (widget.title == 'Madaba') {
      return madaba_list;
    } else if (widget.title == "Zarqa") {
      return zarqa_list;
    } else if (widget.title == "Salt") {
      return salt_list;
    }else
      return zarqa_list;
  }

  var last_rand_col;
  static var random_color = [
    Colors.greenAccent,
    Colors.lightGreen,
    Colors.lightGreenAccent,
    Colors.yellow,
    Colors.yellowAccent
  ];
  static var random_int = new Random();

  Color my_color(int x) {
    /*var y = random_int.nextInt(random_color.length-1);
    if(y != last_rand_col){
      last_rand_col = y;
      return random_color[y];
    }
    else{
      if(y != random_color.length){
        last_rand_col = y;
        return random_color[y+1];
      }
      else{
        last_rand_col = y;
        return random_color[y-1];
      }
    }*/
    if (x % 2 == 0) {
      return Colors.greenAccent;
    } else {
      return Colors.lightGreenAccent;
    }
  }

  var index = 0;

  var _url = 'https://flutter.dev';

  void _launchURL(var place_link) async {
    await canLaunch(place_link) ? await launch(place_link) : throw 'Could not launch $place_link';
    // InAppWebView(initialUrlRequest: URLRequest(url: Uri.parse("https://flutter.dev")));
    // InAppWebView(initialUrlRequest: URLRequest(url: Uri.parse(place_link)));
    // await FlutterWebBrowser.openWebPage(url: place_link);
    /*InAppWebViewController webView;
    String url = place_link;
    double progress = 0;*/
    // await AndroidInAppWebViewController.setWebContentsDebuggingEnabled(true);
    // InAppWebViewGroupOptions options = InAppWebViewGroupOptions(android: AndroidInAppWebViewOptions(useHybridComposition: true,),);



    // InAppWebView(initialUrlRequest: URLRequest(url: Uri.parse("https://flutter.dev")));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              for (int i = 0; i <= get_place().keys.length - 1; i++)
                Container(
                  child: Column(
                    children: [
                      Container(
                        width: double.infinity,
                        color: my_color(i),
                        child: Column(
                          children: [
                            Text(
                              get_place().keys.elementAt(i),
                              style:
                              TextStyle(fontSize: 30, color: Colors.black),
                              textDirection: TextDirection.rtl,
                              textAlign: TextAlign.right,
                            ),
                            Row(
                              children: [
                                Expanded(
                                  flex: 5,
                                  child: TextButton.icon(
                                    onPressed: () {
                                      _launchURL(get_place().values.elementAt(i)[0]);
                                    },
                                    style: ButtonStyle(
                                        alignment: Alignment.centerRight),
                                    label: Text(
                                      "رابط الجروب",
                                      style: TextStyle(
                                          fontSize: 20, color: Colors.black),
                                      textDirection: TextDirection.rtl,
                                      textAlign: TextAlign.right,
                                    ),
                                    icon: Icon(
                                      Icons.link,
                                      color: Colors.red,
                                      size: 45,
                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex: 5,
                                  child: TextButton.icon(
                                    onPressed: () {
                                      _launchURL(
                                          get_place().values.elementAt(i)[1]);
                                    },
                                    style: ButtonStyle(
                                        alignment: Alignment.centerRight),
                                    label: Text(
                                      "خريطة الطريق",
                                      style: TextStyle(
                                          fontSize: 20, color: Colors.black),
                                      textDirection: TextDirection.rtl,
                                      textAlign: TextAlign.right,
                                    ),
                                    icon: Icon(
                                      Icons.map,
                                      color: Colors.red,
                                      size: 45,
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                    ],
                  ),
                )
            ],
          ),
        ));
  }
}
