import 'package:flutter/material.dart';
import 'package:flutter_app/pages/Login_page.dart';

import 'pages/Home_page.dart';
import 'pages/Login_page.dart';

void main() {
  runApp(Appname());
}

class Appname extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      debugShowCheckedModeBanner: false,
      initialRoute: "/home",
      routes: {
        "/": (context) => Login_page(),
        "/home": (context) => Home_page(),
        "/login": (context) => Login_page()
      },
    );
  }
}
