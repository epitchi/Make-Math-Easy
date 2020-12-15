import 'dart:math';

import 'package:flutter/material.dart';
import 'package:solveMathApp/widgets/widget.dart';

class TSHSTP_TimMGTLNbangkPage extends StatefulWidget {
  @override
  _TSHSTP_TimMGTLNbangkPageState createState() =>
      _TSHSTP_TimMGTLNbangkPageState();
}

List listAnswer = new List<String>();

class _TSHSTP_TimMGTLNbangkPageState extends State<TSHSTP_TimMGTLNbangkPage> {
  TextEditingController aTextEditingController = new TextEditingController();
  TextEditingController bTextEditingController = new TextEditingController();
  TextEditingController cTextEditingController = new TextEditingController();
  TextEditingController dTextEditingController = new TextEditingController();
  TextEditingController kTextEditingController = new TextEditingController();
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
  String result4 = "";
  String result5 = "";
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
  double answerDelta_phay;
  GiaiTDDHS() {
    result1 = "";

    double a = double.parse(aTextEditingController.text);
    double b = double.parse(bTextEditingController.text);
    double c = double.parse(cTextEditingController.text);
    double d = double.parse(dTextEditingController.text);
    double k = double.parse(kTextEditingController.text);
    double e = double.parse(eTextEditingController.text);
    int p = int.parse(pTextEditingController.text);
    int q = int.parse(qTextEditingController.text);

    typeFunction = 0;

    double max = -1000000;
    double min = 1000000;
    int m = p;
    int n = q;
    int t = (n - m) * 1000;
    for (int i = t; i >= 0; i--) {
      double f, x;
      x = m + i / 1000;
      f = a * pow(x, 4) + b * pow(x, 2) + c;
      if (max < f) max = f;
      if (min > f) min = f;
    }
    double kq1, kq2;
    result1 = "Giá trị của m là";
    kq1 = (k - max) / e;
    kq2 = (-k - max) / e;
    double th1, th2;
    if (e * kq1 + min > 0)
      th1 = e * kq1 + min;
    else
      th1 = -(e * kq1 + min);
    if (e * kq1 + max > 0)
      th2 = e * kq1 + max;
    else
      th2 = -(e * kq1 + max);
    if (th1 <= th2) result5 = " $kq1 ";
    if (e * kq2 + min > 0)
      th1 = e * kq2 + min;
    else
      th1 = -(e * kq2 + min);
    if (e * kq2 + max > 0)
      th2 = e * kq2 + max;
    else
      th2 = -(e * kq2 + max);
    if (th1 <= th2) result2 = " $kq2 ";
    kq1 = (k - min) / e;
    kq2 = (-k - min) / e;
    if (e * kq1 + min > 0)
      th1 = e * kq1 + min;
    else
      th1 = -(e * kq1 + min);
    if (e * kq1 + max > 0)
      th2 = e * kq1 + max;
    else
      th2 = -(e * kq1 + max);
    if (th1 >= th2) result3 = "  $kq1 ";
    if (e * kq2 + min > 0)
      th1 = e * kq2 + min;
    else
      th1 = -(e * kq2 + min);
    if (e * kq2 + max > 0)
      th2 = e * kq2 + max;
    else
      th2 = -(e * kq2 + max);
    if (th1 >= th2) result4 = " $kq2 ";
  }

  GiaiTDDHS1() {
    td = "Một số bài tập tương tự bài toán của bạn!!!!!";
    db1 =
        " Bài 1: Tìm m để hàm số y=|x^4-2x^2+m| có giá trị lớn nhất trên [0;2] bằng 5.";

    da1 = "m=-4 và m=-3.";
    db2 =
        " Bài 2: Tìm m để hàm số y=|3x^4-4x^3-12x^2+m| có giá trị lớn nhất trên [-3;2] bằng 150.";
    da2 = "m=-118 và m=-93.";
    db3 =
        "Bài 3: Tìm m sao cho giá trị nhỏ nhất của hàm số y= 2x^3-3x^2-m trên [-1;1] bằng -1.";
    da3 = "m=-4.";
    db4 =
        "Bài 4: Tìm m sao cho giá trị nhỏ nhất của hàm số y=-x^3-3X^2+m trên [-1;1] bẳng 0.";
    da4 = "m=-4.";
    db5 =
        "Bài 5: Tìm m sao cho giá trị lớn nhất của hàm số y=|x^3-3x+m| trên [0;3] bằng 16";
    da5 = "m=-2 và m=-14.";
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
          title:
              Text("Tìm m để hàm số trùng phương đạt GTLN bằng K trên [p,q]"),
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
                          leading: Text("K"),
                          title: TextFormField(
                            keyboardType: TextInputType.number,
                            controller: kTextEditingController,
                            decoration: textFieldInputDecoration("Điền K"),
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
                          kTextEditingController.text = "";
                          eTextEditingController.text = "";
                          pTextEditingController.text = "";
                          qTextEditingController.text = "";
                        },
                        child: Text("Nhập lại"),
                      ),
                    ],
                  ),
                  // type Function
                  Text("Dang toán:",
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  Text(
                      "Tìm m để hàm số y = |a.x^4 + b.x^2 + c + e.m| có GTLN bằng K trên [p,q]"),
                  typeFunction != -1
                      ? Column(
                          children: [
                            // Text("Delta' $answerDelta_phay"),
                            Text(
                              "Đề bài",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text(
                                "Tìm m để hàm số  y =  |${aTextEditingController.text}.x^4 + ${bTextEditingController.text}.x^2 + ${cTextEditingController.text} + ${eTextEditingController.text}.m| có GTLN là K trên [${pTextEditingController.text};${qTextEditingController.text}]"),

                            Text(
                              "Đáp án: ",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text(
                                "$result1 : $result2  $result3  $result4  $result5",
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
