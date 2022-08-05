import 'package:flutter/material.dart';

class ImageNetwork extends StatelessWidget {
  // declare properties
  final String path;
  final double? width;
  final double? height;
  // add properties to construtor
  const ImageNetwork({Key? key , required this.path , this.width , this.height}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.network(
        path ,
        width: width,
        height: height,
        fit:BoxFit.fill);
  }
}
