import 'dart:math';
import 'package:flutter/material.dart';
import 'package:solveMathApp/widgets/widget.dart';

class XTDDCHS4Page extends StatefulWidget {
  @override
  _XTDDCHS4PageState createState() => _XTDDCHS4PageState();
}

List listAnswer = new List<String>();

class _XTDDCHS4PageState extends State<XTDDCHS4Page> {
  TextEditingController aTextEditingController = new TextEditingController();
  TextEditingController bTextEditingController = new TextEditingController();
  TextEditingController cTextEditingController = new TextEditingController();

  final formKey = GlobalKey<FormState>();
  int typeFunction = -1;
  String result1 = "";
  String result2 = "";
  String result3 = "";
  String result4 = "";

  double answerDelta_phay;
  GiaiTDDHS() {
    double a = double.parse(aTextEditingController.text);
    double b = double.parse(bTextEditingController.text);
    double c = double.parse(cTextEditingController.text);
    // y = ax^4 + bx^2 + c
    // a

    // double y' = 4*a*x^2 + 2b
    double delta_phay = -8 * a * b;
    // listAnswer = new List<String>();
    answerDelta_phay = delta_phay;
    typeFunction = 0;
    result1 = "";
    result2 = "";
    result3 = "";
    result4 = "";

    if (delta_phay < 0) {
      //y' cung dau' voi' a
      result1 = "∆' =< 0";
      result2 = "Phương trình vô nghiệm \n Y' có 1 nghiệm x = 0";
      if (a > 0) {
        // y DB tren
        result3 = "Y Đồng Biến trên (-oo;0)U(0;+oo)";
      } else if (a < 0) {
        // y NB tren |R
        result3 = "Y Nghịch Biến trên (-oo;0)U(0;+oo)";
      }
    } else if (delta_phay > 0) {
      result1 = "∆' > 0";
      result2 =
          "Phương trình có 2 nghiệm phân biệt \n x1 = ${(-sqrt(-8 * a * b)) / 4 * a} \n x2 = ${(sqrt(-8 * a * b)) / 4 * a} \n x3 = 0";

      //  2 nghiem pb
      //  x1 = (-b-sqrt(delta'))/3a
      //    x2 = (-b+sqrt(delta'))/3a
      if (a > 0) {
        result3 =
            "Y Đồng Biến trên (${(-sqrt(-8 * a * b))}/${4 * a});0) U ${(sqrt(-8 * a * c))}/${4 * a}; +oo)";
        // y DB tren (-oo; (-b-sqrt(A'))/3a)U((-b+sqrt(A'))/3a; +oo)
        result4 =
            "Y Nghịch Biến trên (-oo ; ${(-sqrt(-8 * a * b)) / (4 * a)}) U ( 0 ;${(sqrt(-8 * a * b)) / (4 * a)} )";
      } else if (a < 0) {
        result3 =
            "Y Đồng Biến trên (-oo ; ${(-sqrt(-8 * a * b)) / (4 * a)}) U ( 0 ;${(sqrt(-8 * a * b)) / (4 * a)} )";
        result4 =
            "Y Nghịch Biến trên (${(-sqrt(-8 * a * b))}/${4 * a});0) U (${(sqrt(-8 * a * c))}/${4 * a}; +oo)";
        // y DB tren (-oo; (-b-sqrt(A'))/3a)U((-b+sqrt(A'))/3a; +oo)
        
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
          title: Text("Hàm trùng phương"),
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
                        ListTile(
                          leading: Text("A"),
                          title: TextFormField(
                            keyboardType: TextInputType.number,
                            controller: aTextEditingController,
                            decoration: textFieldInputDecoration("Điền A"),
                            validator: (val) {
                              validateMobile(val);
                            },
                          ),
                        ),
                        ListTile(
                          leading: Text("B"),
                          title: TextFormField(
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
                        ),
                        ListTile(
                          leading: Text("C"),
                          title: TextFormField(
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
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: <Widget>[
                      RaisedButton(
                        onPressed: () {
                          setState(() {
                            GiaiTDDHS();
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
                        child: Text("Delete"),
                      ),
                    ],
                  ),
                  // type Function
                  typeFunction != -1
                      ? Column(
                          children: [
                            Text("Delta' $answerDelta_phay"),
                            Text("$result1"),
                            Text("$result2"),
                            Text("$result3"),
                            Text("$result4"),
                          ],
                        )
                      : Text("Không giải được")
                ],
              ),
            ),
          ),
        ));
  }
}
