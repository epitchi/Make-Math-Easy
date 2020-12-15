import 'dart:math';

import 'package:flutter/material.dart';
import 'package:solveMathApp/widgets/widget.dart';

class TSHSB3_TimMDBtrenabPage extends StatefulWidget {
  @override
  _TSHSB3_TimMDBtrenabPageState createState() =>
      _TSHSB3_TimMDBtrenabPageState();
}

List listAnswer = new List<String>();

class _TSHSB3_TimMDBtrenabPageState extends State<TSHSB3_TimMDBtrenabPage> {
  TextEditingController aTextEditingController = new TextEditingController();
  TextEditingController bTextEditingController = new TextEditingController();
  TextEditingController cTextEditingController = new TextEditingController();
  TextEditingController dTextEditingController = new TextEditingController();
  TextEditingController fTextEditingController = new TextEditingController();
  TextEditingController eTextEditingController = new TextEditingController();
  TextEditingController gTextEditingController = new TextEditingController();
  TextEditingController hTextEditingController = new TextEditingController();
  TextEditingController pTextEditingController = new TextEditingController();
  TextEditingController qTextEditingController = new TextEditingController();
  final formKey = GlobalKey<FormState>();
  int typeFunction = -1;
  String result1 = "";
  String result2 = "";
  String result3 = "";

  double answerDelta_phay;
  GiaiTDDHS() {
    result1 = "";

    double a = double.parse(aTextEditingController.text);
    double b = double.parse(bTextEditingController.text);
    double c = double.parse(cTextEditingController.text);
    double d = double.parse(dTextEditingController.text);
    double f = double.parse(fTextEditingController.text);
    double e = double.parse(eTextEditingController.text);
    int p = int.parse(pTextEditingController.text);
    int q = int.parse(qTextEditingController.text);

    typeFunction = 0;
    double kt = -3 * b * p * p - 2 * d * p - f;
    double max = -1000000;
    double min = 1000000;
    int m = p;
    int n = q;
    int k = (n - m) * 1000;
    for (int i = k; i >= 0; i--) {
      double f, x;
      x = m + i / 1000;
      f = (3 * a * pow(x, 2) + 2 * c * pow(x, 1) + e) / (kt);
      if (max < f) max = f;
      if (min > f) min = f;
    }
    if (kt > 0)
      result1 = " Giá trị của m thuộc [$min ;+oo)";
    else
      result1 = "Gía trị của m thuộc (-oo; $max ]";
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
          title: Text("Tìm m để hàm số bậc ba nghịch biến trên (p,q)"),
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
                        ListTile(
                          leading: Text("D"),
                          title: TextFormField(
                            keyboardType: TextInputType.number,
                            controller: dTextEditingController,
                            decoration: textFieldInputDecoration("Điền D"),
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
                          leading: Text("E"),
                          title: TextFormField(
                            keyboardType: TextInputType.number,
                            controller: eTextEditingController,
                            decoration: textFieldInputDecoration("Điền E"),
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
                          leading: Text("F"),
                          title: TextFormField(
                            keyboardType: TextInputType.number,
                            controller: fTextEditingController,
                            decoration: textFieldInputDecoration("Điền F"),
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
                          leading: Text("G"),
                          title: TextFormField(
                            keyboardType: TextInputType.number,
                            controller: gTextEditingController,
                            decoration: textFieldInputDecoration("Điền G"),
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
                          leading: Text("H"),
                          title: TextFormField(
                            keyboardType: TextInputType.number,
                            controller: hTextEditingController,
                            decoration: textFieldInputDecoration("Điền H"),
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
                          leading: Text("P"),
                          title: TextFormField(
                            keyboardType: TextInputType.number,
                            controller: pTextEditingController,
                            decoration: textFieldInputDecoration("Điền P"),
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
                          leading: Text("Q"),
                          title: TextFormField(
                            keyboardType: TextInputType.number,
                            controller: qTextEditingController,
                            decoration: textFieldInputDecoration("Điền Q"),
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
                          dTextEditingController.text = "";
                          fTextEditingController.text = "";
                          eTextEditingController.text = "";
                          pTextEditingController.text = "";
                          qTextEditingController.text = "";
                        },
                        child: Text("Delete"),
                      ),
                    ],
                  ),
                  // type Function
                  Text("Dang toán:",
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  Text(
                      "Tìm m để hàm số y = (am+b)x^3 +(cm+d)x^2+(em+f)x+gm+h đồng biến trên (p,q)"),
                  typeFunction != -1
                      ? Column(
                          children: [
                            // Text("Delta' $answerDelta_phay"),
                            Text(
                              "Đề bài",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text(
                                "Tìm m để hàm số bậc 3: y = ( ${aTextEditingController.text}.m+${bTextEditingController.text})x^3 +(${cTextEditingController.text}.m+${dTextEditingController.text})x^2+(${eTextEditingController.text}.m+${fTextEditingController.text})x+${gTextEditingController.text}.m+${hTextEditingController.text} đồng biến trên (${pTextEditingController.text};${qTextEditingController.text})"),

                            Text(
                              "Đáp án: ",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text("$result1",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            Text("$result2",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            Text("$result3",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                          ],
                        )
                      : Text(
                          "Bạn chưa nhập đề bài hoặc đề bài của bạn không đúng cấu trúc! Bạn hãy nhập đề bài vào theo đúng dạng nha")
                ],
              ),
            ),
          ),
        ));
  }
}
