import 'package:flutter/material.dart';

void main() {
  runApp(Appname());
}

class Appname extends StatelessWidget {
  const Appname({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Material(
        child: Center(
          child: Text("hi"),
        ),
      ),
    );
  }
}
