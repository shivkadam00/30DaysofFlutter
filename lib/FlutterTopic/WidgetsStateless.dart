import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class rediobutton extends StatefulWidget {
  const rediobutton({super.key});

  @override
  State<rediobutton> createState() => _rediobuttonState();
}

List<String> options = ['option1', 'option2'];
List<String> dropdownOptions = ['Choice A', 'Choice B', 'Choice C'];

class _rediobuttonState extends State<rediobutton> {
  String currentOption = options[0];
  String selectedDropdownOption = dropdownOptions[0];
  List<String> dynamicDropdownOptions = List.from(dropdownOptions);

  bool _ischecked1 = false;
  bool _ischecked2 = false;

  TextEditingController textEditingController = TextEditingController();

  void addToDropdownList() {
    String textToAdd = textEditingController.text;
    if (textToAdd.isNotEmpty && !dynamicDropdownOptions.contains(textToAdd)) {
      setState(() {
        dynamicDropdownOptions.add(textToAdd);
        selectedDropdownOption = textToAdd;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Example"),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          children: <Widget>[
            Text("Radio Button"),
            Divider(),
            ListTile(
              title: Text("Option 1"),
              leading: Radio(
                value: options[0],
                groupValue: currentOption,
                onChanged: (value) {
                  setState(() {
                    currentOption = value.toString();
                  });
                },
              ),
            ),
            ListTile(
              title: Text("Option 2"),
              leading: Radio(
                value: options[1],
                groupValue: currentOption,
                onChanged: (value) {
                  setState(() {
                    currentOption = value.toString();
                  });
                },
              ),
            ),
            Text("Checkbox"),
            Divider(),
            CheckboxListTile(
              title: Text("option 1"),
              value: _ischecked1,
              onChanged: (newValue) {
                setState(() {
                  _ischecked1 = newValue!;
                });
              },
            ),
            CheckboxListTile(
              title: Text('option 2'),
              value: _ischecked2,
              onChanged: (newValue) {
                setState(() {
                  _ischecked2 = newValue!;
                });
              },
            ),
            Text("Dropdown List"),
            Divider(),
            DropdownButton<String>(
              value: selectedDropdownOption,
              onChanged: (newValue) {
                setState(() {
                  selectedDropdownOption = newValue!;
                });
              },
              items: dynamicDropdownOptions.map((String option) {
                return DropdownMenuItem<String>(
                  value: option,
                  child: Text(option),
                );
              }).toList(),
            ),
            SizedBox(height: 20),
            TextField(
              controller: textEditingController,
              enabled: false,
              decoration: InputDecoration(
                labelText: 'Enter text to add to dropdown',
              ),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: addToDropdownList,
              child: Text('Add to Dropdown'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ViewDataScreen(
                      selectedRadioValue: currentOption,
                      isChecked1: _ischecked1,
                      isChecked2: _ischecked2,
                      selectedDropdownValue: selectedDropdownOption,
                    ),
                  ),
                ).then((updatedData) {
                  if (updatedData != null) {
                    setState(() {
                      currentOption = updatedData['selectedRadioValue'];
                      _ischecked1 = updatedData['isChecked1'];
                      _ischecked2 = updatedData['isChecked2'];
                      selectedDropdownOption =
                          updatedData['selectedDropdownValue'];
                    });
                  }
                });
              },
              child: Text('View Data'),
            ),
          ],
        ),
      ),
    );
  }
}

class ViewDataScreen extends StatelessWidget {
  final String selectedRadioValue;
  final bool isChecked1;
  final bool isChecked2;
  final String selectedDropdownValue;

  ViewDataScreen({
    required this.selectedRadioValue,
    required this.isChecked1,
    required this.isChecked2,
    required this.selectedDropdownValue,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('View Data'),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          children: <Widget>[
            Text('Selected Radio Value: $selectedRadioValue'),
            SizedBox(height: 10),
            Text('Checkbox 1: ${isChecked1 ? "Checked" : "Unchecked"}'),
            Text('Checkbox 2: ${isChecked2 ? "Checked" : "Unchecked"}'),
            SizedBox(height: 10),
            Text('Selected Dropdown Value: $selectedDropdownValue'),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => EditDataScreen(
                      selectedRadioValue: selectedRadioValue,
                      isChecked1: isChecked1,
                      isChecked2: isChecked2,
                      selectedDropdownValue: selectedDropdownValue,
                    ),
                  ),
                ).then((updatedData) {
                  if (updatedData != null) {
                    Navigator.pop(context, updatedData);
                  }
                });
              },
              child: Text('Edit'),
            ),
          ],
        ),
      ),
    );
  }
}

class EditDataScreen extends StatefulWidget {
  final String selectedRadioValue;
  final bool isChecked1;
  final bool isChecked2;
  final String selectedDropdownValue;

  EditDataScreen({
    required this.selectedRadioValue,
    required this.isChecked1,
    required this.isChecked2,
    required this.selectedDropdownValue,
  });

  @override
  _EditDataScreenState createState() => _EditDataScreenState();
}

class _EditDataScreenState extends State<EditDataScreen> {
  TextEditingController radioValueController = TextEditingController();
  TextEditingController dropdownValueController = TextEditingController();

  @override
  void initState() {
    super.initState();
    radioValueController.text = widget.selectedRadioValue;
    dropdownValueController.text = widget.selectedDropdownValue;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Edit Data'),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          children: <Widget>[
            TextField(
              controller: radioValueController,
              decoration: InputDecoration(labelText: 'Edit Radio Value'),
            ),
            SizedBox(height: 10),
            TextField(
              controller: dropdownValueController,
              decoration: InputDecoration(labelText: 'Edit Dropdown Value'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context, {
                  'selectedRadioValue': radioValueController.text,
                  'isChecked1': widget.isChecked1,
                  'isChecked2': widget.isChecked2,
                  'selectedDropdownValue': dropdownValueController.text,
                });
              },
              child: Text('Save Changes'),
            ),
          ],
        ),
      ),
    );
  }
}
