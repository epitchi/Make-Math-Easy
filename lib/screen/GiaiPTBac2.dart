import 'dart:math';

import 'package:flutter/material.dart';
import 'package:solveMathApp/widgets/widget.dart';

class GiaiPTBac2 extends StatefulWidget {
  @override
  _GiaiPTBac2State createState() => _GiaiPTBac2State();
}

class _GiaiPTBac2State extends State<GiaiPTBac2> {
  TextEditingController aTextEditingController = new TextEditingController();
  TextEditingController bTextEditingController = new TextEditingController();
  TextEditingController cTextEditingController = new TextEditingController();

  double x1Result, x2Result;
  int typeFunction = -1;

  final formKey = GlobalKey<FormState>();

  GiaiPT() {
    if (formKey.currentState.validate()) {
      double a = double.parse(aTextEditingController.text);
      double b = double.parse(bTextEditingController.text);
      double c = double.parse(cTextEditingController.text);
      double x1, x2;
      double delta = b * b - 4 * a * c;
      if (delta < 0) {
        x1 = x2 = 0.0;
        typeFunction = 0;
      } else if (delta == 0) {
        x1 = x2 = -b / (2 * a);
        typeFunction = 1;
      } else {
        delta = sqrt(delta);
        x1 = (-b + delta) / (2 * a);
        x2 = (-b - delta) / (2 * a);
        x1Result = x1;
        x2Result = x2;
        typeFunction = 2;
      }
    }
  }

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
            height: MediaQuery.of(context).size.height - 5,
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
                          keyboardType: TextInputType.number,
                          controller: aTextEditingController,
                          decoration: textFieldInputDecoration("Điền A"),
                          validator: (val) {
                            validateMobile(val);
                          },
                        ),
                        TextFormField(
                          keyboardType: TextInputType.number,
                          controller: bTextEditingController,
                          decoration: textFieldInputDecoration("Điền B"),
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
                          keyboardType: TextInputType.number,
                          controller: cTextEditingController,
                          decoration: textFieldInputDecoration("Điền C"),
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
                          setState(() {
                            GiaiPT();
                          });
                        },
                        child: Text("Solve"),
                      ),
                      RaisedButton(
                        onPressed: () {
                          aTextEditingController.text = "";
                          bTextEditingController.text = "";
                          cTextEditingController.text = "";
                        },
                        child: Text("Delete!"),
                      ),
                    ],
                  ),
                  Text(typeFunction == 2
                      ? "Phương trình có 2 nghiệm: \n x1 =${x1Result} \n x2 = ${x2Result}"
                      : typeFunction == 1 ? "Phương trình có nghiệm kép: \n x1 = x2 = ${x1Result}"
                      : typeFunction == 0 ? "Phương trình vô nghiệm" : "Không giải được!" 
                      ),
                ],
              ),
            ),
          ),
        ));
  }
}
