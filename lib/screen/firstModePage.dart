import 'package:flutter/material.dart';

class FirstModePage extends StatefulWidget {
  @override
  _FirstModePageState createState() => _FirstModePageState();
}

class _FirstModePageState extends State<FirstModePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Mode 1"),
        ),
        body: Container(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: <Widget>[
                TextFormField(
                  decoration: InputDecoration(hintText: "Điền x"),
                  onChanged: (value) {
                    setState(() {
                      //num1 == num parse .
                    });
                  },
                ),
                TextFormField(
                  decoration: InputDecoration(hintText: "Điền y"),
                  onChanged: (value) {
                    setState(() {
                      //num1 == num parse .
                    });
                  },
                ),
                TextFormField(
                  decoration: InputDecoration(hintText: "Điền z"),
                  onChanged: (value) {
                    setState(() {
                      //num1 == num parse .
                    });
                  },
                ),
              ],
            ),
          ),
        ));
  }
}
