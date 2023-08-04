import 'package:flutter/material.dart';
import 'package:flutter_app/FlutterTopic/Snackbar.dart';
import 'package:flutter_app/pages/Login_page.dart';
import 'package:flutter_app/pages/RedioBars.dart';
import 'package:flutter_app/utils/routes.dart';
import 'package:google_fonts/google_fonts.dart';
import 'FlutterTopic/Container.dart';
import 'FlutterTopic/Gridview.dart';
import 'FlutterTopic/Listview.dart';
import 'FlutterTopic/Scrolling.dart';
import 'pages/Home_page.dart';
import 'pages/Login_page.dart';
import 'FlutterTopic/WidgetsStateless.dart';

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
      initialRoute: MyRoutes.homeRoute,
      routes: {
        "/": (context) => Login_page(),
        MyRoutes.homeRoute: (context) => HomePage(),
        MyRoutes.loginRoute: (context) => Login_page(),
        MyRoutes.rediobutton: (context) => rediobutton(),
        MyRoutes.snackbar: (context) => stack(),
        MyRoutes.RedioBar: (context) => RedioBars(),
        MyRoutes.Container: (context) => ContainerPage(),
        MyRoutes.Scrolling: (context) => scrolling(),
        MyRoutes.Listview: (context) => Listview(),
        MyRoutes.gridview: (context) => GridB()
      },
    );
  }
}
