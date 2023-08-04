import 'package:flutter/material.dart';
import 'package:flutter_app/utils/routes.dart';
import 'package:flutter_app/widgets/drawer.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedOption = 1;

  @override
  Widget build(BuildContext context) {
    var days = 100;
    return Scaffold(
      appBar: AppBar(
        title: Text("My App"),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              ElevatedButton(
                child: Text("Radio, Checkbox, Text"),
                onPressed: () {
                  Navigator.pushNamed(context, MyRoutes.rediobutton);
                },
              ),
              ElevatedButton(
                child: Text("Snackbar"),
                onPressed: () {
                  Navigator.pushNamed(context, MyRoutes.snackbar);
                },
              ),
              ElevatedButton(
                child: Text("redio"),
                onPressed: () {
                  Navigator.pushNamed(context, MyRoutes.RedioBar);
                },
              ),
              ElevatedButton(
                child: Text("Conataier"),
                onPressed: () {
                  Navigator.pushNamed(context, MyRoutes.Container);
                },
              ),
              ElevatedButton(
                child: Text("Scrolling"),
                onPressed: () {
                  Navigator.pushNamed(context, MyRoutes.Scrolling);
                },
              ),
              ElevatedButton(
                child: Text("ListView"),
                onPressed: () {
                  Navigator.pushNamed(context, MyRoutes.Listview);
                },
              ),
              ElevatedButton(
                child: Text("grid"),
                onPressed: () {
                  Navigator.pushNamed(context, MyRoutes.gridview);
                },
              ),
            ],
          ),
        ),
      ),
      drawer: Mydrawer(),
    );
  }
}
