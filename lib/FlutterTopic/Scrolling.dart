import 'package:flutter/material.dart';

class scrolling extends StatefulWidget {
  const scrolling({super.key});

  @override
  State<scrolling> createState() => _scrollingState();
}

class _scrollingState extends State<scrolling> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Scrolling"),
        ),
        body: SingleChildScrollView(
          child: Column(children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(children: [
                Container(
                  margin: EdgeInsets.only(bottom: 10, right: 10),
                  height: 300,
                  width: 200,
                  color: Colors.black,
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 10, right: 10),
                  height: 300,
                  width: 200,
                  color: const Color.fromARGB(255, 196, 23, 23),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 10, right: 10),
                  height: 300,
                  width: 200,
                  color: Color.fromARGB(255, 176, 191, 10),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 10, right: 10),
                  height: 300,
                  width: 200,
                  color: Color.fromARGB(255, 8, 243, 239),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 10, right: 10),
                  height: 300,
                  width: 200,
                  color: const Color.fromARGB(255, 208, 138, 138),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 10, right: 10),
                  height: 300,
                  width: 200,
                  color: const Color.fromARGB(255, 40, 30, 30),
                ),
              ]),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 10),
              height: 300,
              color: const Color.fromARGB(255, 232, 16, 16),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 10),
              height: 300,
              color: Color.fromARGB(255, 20, 31, 186),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 10),
              height: 300,
              color: Color.fromARGB(255, 237, 177, 13),
            ),
          ]),
        ));
  }
}
