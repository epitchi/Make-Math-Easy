import 'dart:math';

import 'package:flutter/material.dart';
import 'package:solveMathApp/widgets/widget.dart';

class TSHTP_TimMGTLNbangkPage extends StatefulWidget {
  @override
  _TSHTP_TimMGTLNbangkPageState createState() =>
      _TSHTP_TimMGTLNbangkPageState();
}

List listAnswer = new List<String>();

class _TSHTP_TimMGTLNbangkPageState extends State<TSHTP_TimMGTLNbangkPage> {
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

  double answerDelta_phay;
  GiaiTDDHS() {
    result1 = "";

    double a = double.parse(aTextEditingController.text);
    double b = double.parse(bTextEditingController.text);
    double c = double.parse(cTextEditingController.text);
    double k = double.parse(kTextEditingController.text);
    double d = double.parse(dTextEditingController.text);
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
      f = (a * pow(x, 4) + b * pow(x, 2) + c);
      if (max < f) max = f;
      if (min > f) min = f;
    }
    double kq1, kq2;
    result1 = "Giá trị của m là";
    kq1 = (k - max) / d;
    kq2 = (-k - max) / d;
    double th1, th2;
    if (d * kq1 + min > 0)
      th1 = d * kq1 + min;
    else
      th1 = -(d * kq1 + min);
    if (e * kq1 + max > 0)
      th2 = d * kq1 + max;
    else
      th2 = -(d * kq1 + max);
    if (th1 <= th2) result5 = " $kq1 ";
    if (d * kq2 + min > 0)
      th1 = d * kq2 + min;
    else
      th1 = -(d * kq2 + min);
    if (d * kq2 + max > 0)
      th2 = d * kq2 + max;
    else
      th2 = -(d * kq2 + max);
    if (th1 <= th2) result2 = " $kq2 ";
    kq1 = (k - min) / d;
    kq2 = (-k - min) / d;
    if (d * kq1 + min > 0)
      th1 = d * kq1 + min;
    else
      th1 = -(d * kq1 + min);
    if (d * kq1 + max > 0)
      th2 = d * kq1 + max;
    else
      th2 = -(d * kq1 + max);
    if (th1 >= th2) result3 = "  $kq1 ";
    if (d * kq2 + min > 0)
      th1 = d * kq2 + min;
    else
      th1 = -(d * kq2 + min);
    if (d * kq2 + max > 0)
      th2 = d * kq2 + max;
    else
      th2 = -(d * kq2 + max);
    if (th1 >= th2) result4 = " $kq2 ";
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
                        child: Text("Solve"),
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
                        child: Text("Delete"),
                      ),
                    ],
                  ),
                  // type Function
                  Text("Dang toán:",
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  Text(
                      "Tìm m để hàm số y = |a.x^4 +b.x^2 + c + d.m| có GTLN bằng K trên [p,q]"),
                  typeFunction != -1
                      ? Column(
                          children: [
                            // Text("Delta' $answerDelta_phay"),
                            Text(
                              "Đề bài",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text(
                                "Tìm m để hàm số: y =  |${aTextEditingController.text}.x^4 + ${bTextEditingController.text}.x^2 + ${cTextEditingController.text} + ${dTextEditingController.text}.m| có GTLN là ${kTextEditingController.text} trên [${pTextEditingController.text};${qTextEditingController.text}]"),

                            Text(
                              "Đáp án: ",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text(
                                "$result1 : $result2  $result3  $result4  $result5",
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
