import 'package:flutter/material.dart';
import 'package:solveMathApp/widgets/widget.dart';

class FirstModePage extends StatefulWidget {
  @override
  _FirstModePageState createState() => _FirstModePageState();
}

class _FirstModePageState extends State<FirstModePage> {
  TextEditingController xTextEditingController = new TextEditingController();
  TextEditingController yTextEditingController = new TextEditingController();
  TextEditingController zTextEditingController = new TextEditingController();
  final formKey = GlobalKey<FormState>();

  String validateMobile(String value) {
    String pattern = r'(^(?:[+0]9)?[0-9]{10,12}$)';
    RegExp regExp = new RegExp(pattern);
    if (value.length == 0) {
      return 'Please enter number';
    } else if (!regExp.hasMatch(value)) {
      return 'Please enter valid mobile number';
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Mode 1"),
        ),
        body: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height -5,
            // alignment: Alignment.bottomCenter,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Form(
                    key: formKey,
                    child: Column(
                      children: <Widget>[
                        TextFormField(
                          controller: xTextEditingController,
                          decoration: textFieldInputDecoration("Điền X"),
                          validator: (val) {
                            validateMobile(val);
                          },
                        ),
                        TextFormField(
                          controller: yTextEditingController,
                          decoration: textFieldInputDecoration("Điền Y"),
                          validator: (val) {
                            validateMobile(val);
                          },
                          onChanged: (value) {
                            setState(() {
                              //num1 == num parse .
                            });
                          },
                        ),
                        TextFormField(
                          controller: zTextEditingController,
                          decoration: textFieldInputDecoration("Điền Z"),
                          validator: (val) {
                            validateMobile(val);
                          },
                          onChanged: (value) {
                            setState(() {
                              //num1 == num parse .
                            });
                          },
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: <Widget>[
                      RaisedButton(
                        onPressed: () {
                          //solve, wait ML nqu
                        },
                        child: Text("Solve"),
                      ),
                      RaisedButton(
                        onPressed: () {
                          xTextEditingController.text = "";
                          yTextEditingController.text = "";
                          zTextEditingController.text = "";
                        },
                        child: Text("Delete"),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
