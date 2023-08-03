import 'package:flutter/material.dart';

class RedioBars extends StatefulWidget {
  const RedioBars({super.key});

  @override
  State<RedioBars> createState() => _RedioBarsState();
}

List<String> options = ['option1', 'option2', 'option3'];

class _RedioBarsState extends State<RedioBars> {
  String currentoptions = options[0];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Radio"),
      ),
      body: Column(
        children: <Widget>[
          ListTile(
            title: Text("A"),
            leading: Radio(
              value: options[0],
              groupValue: currentoptions,
              onChanged: (value) {
                setState(() {
                  currentoptions = value.toString();
                });
              },
            ),
          ),
          ListTile(
            title: Text("B"),
            leading: Radio(
              value: options[1],
              groupValue: currentoptions,
              onChanged: (value) {
                setState(() {
                  currentoptions = value.toString();
                });
              },
            ),
          ),
          ListTile(
            title: Text("C"),
            leading: Radio(
              value: options[2],
              groupValue: currentoptions,
              onChanged: (value) {
                setState(() {
                  currentoptions = value.toString();
                });
              },
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      View(selectedRadioValue: currentoptions),
                ),
              ).then((result) {
                if (result != null) {
                  setState(() {
                    currentoptions = result['selectedRadioValue'];
                  });
                }
              });
            },
            child: Text("View Data"),
          ),
        ],
      ),
    );
  }
}

class View extends StatefulWidget {
  final String selectedRadioValue;

  View({required this.selectedRadioValue});

  @override
  _ViewState createState() => _ViewState();
}

class _ViewState extends State<View> {
  late String selectedRadioValue;
  late String editedValue;

  @override
  void initState() {
    super.initState();
    selectedRadioValue = widget.selectedRadioValue;
    editedValue = widget.selectedRadioValue;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Data View"),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          children: <Widget>[
            Text("Radio button value is: $selectedRadioValue"),
            ElevatedButton(
              onPressed: () async {
                final result = await Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => EditScreen(
                      initialValue: editedValue,
                      selectedRadioValue: selectedRadioValue,
                    ),
                  ),
                );

                if (result != null) {
                  setState(() {
                    editedValue = result['editedValue'];
                    selectedRadioValue = result['selectedRadioValue'];
                  });
                }
              },
              child: Text("Edit"),
            ),
          ],
        ),
      ),
    );
  }
}

class EditScreen extends StatefulWidget {
  final String initialValue;
  final String selectedRadioValue;

  EditScreen({required this.initialValue, required this.selectedRadioValue});

  @override
  _EditScreenState createState() => _EditScreenState();
}

class _EditScreenState extends State<EditScreen> {
  late String editedValue;
  TextEditingController radioValueController = TextEditingController();

  @override
  void initState() {
    radioValueController.text = widget.selectedRadioValue;
    editedValue = widget.initialValue;

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Edit"),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          children: <Widget>[
            ListTile(
              title: Text("A"),
              leading: Radio(
                value: options[0],
                groupValue: editedValue,
                onChanged: (value) {
                  setState(() {
                    editedValue = value.toString();
                  });
                },
              ),
            ),
            ListTile(
              title: Text("B"),
              leading: Radio(
                value: options[1],
                groupValue: editedValue,
                onChanged: (value) {
                  setState(() {
                    editedValue = value.toString();
                  });
                },
              ),
            ),
            ListTile(
              title: Text("C"),
              leading: Radio(
                value: options[2],
                groupValue: editedValue,
                onChanged: (value) {
                  setState(() {
                    editedValue = value.toString();
                  });
                },
              ),
            ),
            TextField(
              controller: radioValueController,
              decoration: InputDecoration(labelText: 'Edit Radio Value'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(
                  context,
                  {
                    'editedValue': editedValue,
                    'selectedRadioValue': radioValueController.text,
                  },
                );
              },
              child: Text("Save Text Value"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(
                  context,
                  {
                    'editedValue': editedValue,
                    'selectedRadioValue': editedValue,
                  },
                );
              },
              child: Text("Save Redio Option Value"),
            ),
          ],
        ),
      ),
    );
  }
}
