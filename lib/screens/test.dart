import 'package:flutter/material.dart';

class My extends StatefulWidget {
  @override
  _MyState createState() => _MyState();
}

class _MyState extends State<My> {
  int _value = 1;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.green,
              title: Text("Flutter Dropdown Button Tutorial"),
            ),
            body: Container(
              padding: EdgeInsets.all(20),
              child: DropdownButton(
                value: _value,
                items: [
                  DropdownMenuItem(
                    child: Text("First Item"),
                    value: 1,
                  ),
                  DropdownMenuItem(
                    child: Text("Second Item"),
                    value: 2,
                  )
                ],
                onChanged: (int value) {
                  setState(() {
                    _value = value;
                  });
                },
              ),
            )));
  }
}
