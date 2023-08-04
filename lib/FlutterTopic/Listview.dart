import 'package:flutter/material.dart';

class Listview extends StatefulWidget {
  const Listview({super.key});

  @override
  State<Listview> createState() => _ListviewState();
}

class _ListviewState extends State<Listview> {
  List<String> numarray = [
    "ram",
    "sham",
    "sonya",
    "sham",
    "sonya",
    "ram",
    "sham",
    "sonya",
    "sonya",
    "sham",
    "sonya",
    "ram",
    "sham",
    "sham",
    "sonya",
    "ram",
    "sham",
    "sonya",
    "sonya",
    "sham",
    "sonya",
    "ram",
    "sham",
    "sonya"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("ListView"),
        ),
        body: Center(
          child: ListView.separated(
            // padding: EdgeInsets.all(16.0),
            itemBuilder: (context, index) {
              return Text(
                numarray[index],
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
              );
            },
            itemCount: numarray.length,
            separatorBuilder: (contex, index) {
              return Divider(
                height: 4,
                color: Colors.black,
                thickness: 1,
              );
            },
            // itemExtent: 100,
            // scrollDirection: Axis.horizontal,
          ),
        ));
  }
}
