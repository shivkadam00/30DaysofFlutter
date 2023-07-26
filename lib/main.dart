import 'package:flutter/material.dart';

import "Home_page.dart";

void main() {
  runApp(Appname());
}

class Appname extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home_page(),
    );
  }
}
