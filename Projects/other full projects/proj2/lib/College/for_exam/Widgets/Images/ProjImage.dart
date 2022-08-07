import 'package:flutter/material.dart';


class ProjectImage extends StatelessWidget {
  final String path;
  final double? width;
  final double? height;
  const ProjectImage({Key? key, required this.path , this.width, this.height}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image(
      image: AssetImage(path),
      width: width,
      height: height,
      fit: BoxFit.cover,
    );
  }
}
