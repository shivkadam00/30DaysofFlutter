import 'package:flutter/material.dart';

class ContainerPage extends StatefulWidget {
  const ContainerPage({super.key});

  @override
  State<ContainerPage> createState() => _ContainerPageState();
}

class _ContainerPageState extends State<ContainerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Container"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                color: Colors.amber,
                borderRadius: BorderRadius.circular(100),
              ),
              child: Center(
                child: Text(
                  "Container 1",
                  style: TextStyle(color: const Color.fromARGB(255, 6, 6, 6)),
                ),
              ),
            ),
            SizedBox(height: 20), // Add some space between containers
            Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                  color: Colors.blue, // Change color for the second container
                  borderRadius: BorderRadius.circular(100),
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 20,
                        color: Color.fromARGB(255, 236, 10, 10),
                        spreadRadius: 11),
                  ]),
              child: Center(
                child: Text(
                  "Container 2",
                  style: TextStyle(color: const Color.fromARGB(255, 6, 6, 6)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
