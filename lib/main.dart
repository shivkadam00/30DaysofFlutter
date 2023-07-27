import 'package:flutter/material.dart';
import 'package:flutter_app/pages/Login_page.dart';
import 'package:flutter_app/utils/routes.dart';
import 'package:google_fonts/google_fonts.dart';
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
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        fontFamily: GoogleFonts.lato().fontFamily,
      ),
      debugShowCheckedModeBanner: false,
      routes: {
        "/": (context) => Login_page(),
        MyRoutes.homeRoute: (context) => Home_page(),
        MyRoutes.loginRoute: (context) => Login_page()
      },
    );
  }
}
