import 'dart:math';

import 'package:flutter/material.dart';
import 'package:solveMathApp/widgets/widget.dart';

class TSHPT_DBTTXDPage extends StatefulWidget {
  @override
  _TSHPT_DBTTXDPageState createState() => _TSHPT_DBTTXDPageState();
}

List listAnswer = new List<String>();

class _TSHPT_DBTTXDPageState extends State<TSHPT_DBTTXDPage> {
  TextEditingController aTextEditingController = new TextEditingController();
  TextEditingController bTextEditingController = new TextEditingController();
  TextEditingController cTextEditingController = new TextEditingController();
  TextEditingController dTextEditingController = new TextEditingController();
  TextEditingController fTextEditingController = new TextEditingController();
  TextEditingController eTextEditingController = new TextEditingController();
  TextEditingController gTextEditingController = new TextEditingController();
  TextEditingController hTextEditingController = new TextEditingController();

  final formKey = GlobalKey<FormState>();
  int typeFunction = -1;
  String result1 = "";
  String result2 = "";
  String result3 = "";
  String db1 = "";
  String db2 = "";
  String db3 = "";
  String db4 = "";
  String db5 = "";
  String da1 = "";
  String da2 = "";
  String da3 = "";
  String da4 = "";
  String da5 = "";
  String td = "";
  GiaiTDDHS() {
    result1 = "";

    double a = double.parse(aTextEditingController.text);
    double b = double.parse(bTextEditingController.text);
    double c = double.parse(cTextEditingController.text);
    double d = double.parse(dTextEditingController.text);
    double f = double.parse(fTextEditingController.text);
    double e = double.parse(eTextEditingController.text);
    double g = double.parse(gTextEditingController.text);
    double h = double.parse(hTextEditingController.text);

    typeFunction = 0;
    double A = a * g - e * c;
    double B = a * h + b * g - e * d - f * c;
    double C = b * h - f * d;
    if (A == 0) {
      if (B == 0) if (C <= 0)
        result1 = "Không có giá trị m thoả";
      else
        result1 = "Với mọi giá trị m";
      if (B > 0)
        result1 = "Gía trị m thuộc (${-C / B} ; +oo).";
      else
        result1 = "Giá trị của m thuộc (-oo; ${-C / B})";
    } else {
      double delta = B * B - 4 * A * C;
      if (A < 0) {
        if (delta <= 0) result1 = "Không có giá trị m thoả";
        if (delta > 0) {
          double x1 = (-B - sqrt(delta)) / (2 * A);
          double x2 = (-B + sqrt(delta)) / (2 * A);
          result1 = "Giá trị của m thuộc ($x1 ; $x2 )";
        }
      }
      if (A > 0) {
        double x0 = -B / (2 * A);
        if (delta < 0) result1 = "Mọi giá trị m thuộc R";
        if (delta == 0) result1 = "Mọi giá trị m khác $x0 ";
        if (delta > 0) {
          double x1 = (-B + sqrt(delta)) / (2 * A);
          double x2 = (-B - sqrt(delta)) / (2 * A);
          result1 = "Giá trị của m thuộc (-oo ; $x1) U ($x2 ; +oo )";
        }
      }
    }
  }

  GiaiTDDHS1() {
    td = "Một số bài tập tương tự bài toán của bạn!!!!!";
    db1 = "Bài 1: Tìm m để hàm số y = (m.x – 2)/(x + m – 3) luôn đồng biến";
    da1 = "Với m = (-oo;1] U [2;+oo) thì hàm số đã cho luôn đồng biến";
    db2 =
        "Bài 2: Tìm m để hàm số y = x/(x - m) luôn đồng biến trên từng khoảng xác định";
    da2 =
        "Với m thuộc (-oo;0] thì hàm số đã cho luôn đồng biến trên từng khoảng xác định";
    db3 =
        "Bài 3: Tìm m để hàm số y = (m.x – 2.m – 3)/(x - m) luôn đồng biến trên từng khoảng xác định";
    da3 =
        "Với m thuộc đoạn(-1;3) thì hàm số đã cho luôn đồng biến trên từng khoảng xác định";

    db4 = "Bài 4: TTìm GTLN, GTNN của hàm số y = (x - 1)/(x + 2) trên [0;2]";
    da4 = "GTNN của hàm số là -0.5 và GTLN của hàm số là 0.25";
    db5 = "Bài 5: Tìm GTLN, GTNN của hàm số y = (x^2 -3)/(x - 2) trên [3;4]";
    da5 = "GTNN của hàm số là 6 và GTLN của hàm số là 6.5";
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
          title: Text(
              "Tìm m để hàm số phân thức đồng biến trên từng khoảng xác định"),
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
                        child: Text("Kết quả"),
                      ),
                      RaisedButton(
                        onPressed: () {
                          setState(() {
                            GiaiTDDHS1();
                          });
                        },
                        child: Text("Bài tập tương tự"),
                      ),
                      RaisedButton(
                        onPressed: () {
                          aTextEditingController.text = "";
                          bTextEditingController.text = "";
                          cTextEditingController.text = "";
                          dTextEditingController.text = "";
                          fTextEditingController.text = "";
                          eTextEditingController.text = "";
                        },
                        child: Text("Nhập lại"),
                      ),
                    ],
                  ),
                  // type Function
                  Text("Dang toán:",
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  Text(
                      "Tìm m để hàm số y = ((am+b)x +(cm+d))/((em+f)x+gm+h) đồng biến trên từng khoảng xác định"),
                  typeFunction != -1
                      ? Column(
                          children: [
                            // Text("Delta' $answerDelta_phay"),
                            Text(
                              "Đề bài",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text(
                                "Tìm m để hàm số: y = (( ${aTextEditingController.text}m+${bTextEditingController.text})x +${cTextEditingController.text} m+${dTextEditingController.text})/((${eTextEditingController.text}m+${fTextEditingController.text})x+${gTextEditingController.text}m+${hTextEditingController.text}) đồng biến trên từng khoảng xác định"),

                            Text(
                              "Đáp án: ",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text("$result1",
                                style: TextStyle(fontWeight: FontWeight.bold)),

                            Text("$td",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            Text(
                              "$db1",
                            ),
                            Text("$da1",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            Text(
                              "$db2",
                            ),
                            Text("$da2",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            Text(
                              "$db3",
                            ),
                            Text("$da3",
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
