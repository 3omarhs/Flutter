import 'package:flutter/foundation.dart';

class Info {
  String name = "";
  int height = 0;
  DateTime date = DateTime.now();

  Info({
    required this.name,
    required this.height,
    required this.date,
});
}