import 'package:flutter/material.dart';

class Home_page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var days = 100;
    return Scaffold(
      appBar: AppBar(
        title: Text("My App"),
      ),
      body: Center(
        child: Container(
          child: Text(
            "hi i am  shiv $days",
            style: const TextStyle(fontSize: 48),
          ),
        ),
      ),
      drawer: Drawer(),
    );
  }
}
