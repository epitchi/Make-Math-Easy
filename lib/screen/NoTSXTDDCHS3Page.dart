import 'dart:math';

import 'package:flutter/material.dart';
import 'package:solveMathApp/widgets/widget.dart';

class NoTSXTDDCHS3Page extends StatefulWidget {
  @override
  _NoTSXTDDCHS3PageState createState() => _NoTSXTDDCHS3PageState();
}

List listAnswer = new List<String>();

class _NoTSXTDDCHS3PageState extends State<NoTSXTDDCHS3Page> {
  TextEditingController aTextEditingController = new TextEditingController();
  TextEditingController bTextEditingController = new TextEditingController();
  TextEditingController cTextEditingController = new TextEditingController();
  TextEditingController dTextEditingController = new TextEditingController();

  final formKey = GlobalKey<FormState>();
  int typeFunction = -1;
  String _result1 = "";
  String _result2 = "";
  String _result3 = "";
  String result1 = "";
  String result2 = "";
  String result3 = "";
  String result4 = "";
  String result5 = "";
  String result6 = "";
  String result7 = "";
  String result8 = "";
  String result9 = "";
  String result10 = "";
  String result111 = "";
  String result112 = "";
  String result113 = "";
  String result114 = "";
  String result115 = "";
  String result116 = "";
  String result117 = "";
  String result118 = "";
  String result119 = "";
  String result1110 = "";

  double answerDelta_phay;
  GiaiTDDHS() {
    double a = double.parse(aTextEditingController.text);
    double b = double.parse(bTextEditingController.text);
    double c = double.parse(cTextEditingController.text);
    double d = double.parse(dTextEditingController.text);

    // a
    // double y' = 3*a*x^2 + 2bx +c
    double delta_phay = pow(b, 2) - 3 * a * c;
    // listAnswer = new List<String>();
    answerDelta_phay = delta_phay;
    typeFunction = 0;

    if (delta_phay <= 0) {
      if (a > 0) {
        _result1 = "Hàm số đồng biến trên |R";
      } else if (a < 0) {
        _result1 = "Hàm số nghịch biến trên |R";
      }
    } else if (delta_phay > 0) {
      if (a > 0) {
        _result1 =
            "Hàm số đồng biến trên (-oo; ${(-b - sqrt(delta_phay)) / (3 * a)}) và (${(-b + sqrt(delta_phay)) / (3 * a)}; +oo)";
        // y DB tren (-oo; (-b-sqrt(A'))/3a)U((-b+sqrt(A'))/3a; +oo)
        _result2 =
            "Hàm số nghịch biến trên (${(-b - sqrt(delta_phay)) / (3 * a)} ; ${(-b + sqrt(delta_phay)) / (3 * a)} )";
      } else if (a < 0) {
        _result1 =
            "Hàm số đồng biến trên (${(-b - sqrt(delta_phay)) / (3 * a)} ; ${(-b + sqrt(delta_phay)) / (3 * a)} )";
        // y DB tren (-oo; (-b-sqrt(A'))/3a)U((-b+sqrt(A'))/3a; +oo)

        _result2 =
            "Hàm số nghịch biến trên (-oo; ${(-b - sqrt(delta_phay)) / (3 * a)}) và ${(-b + sqrt(delta_phay)) / (3 * a)}; +oo)";

        // y NB tren ((-b-sqrt(A'))/3a); (-b+sqrt(A'))/3a)

      }
    }
  }

  GiaiTDDHS1() {
    typeFunction = 0;
    _result3 = "Một số bài toán tương tự";
    int dem = 0;
    for (int h = -10; h <= 10; h++)
      for (int j = -10; j <= 10; j++)
        for (int k = -10; k <= 10; k++)
          for (int i = 1; i <= 10; i++)
            if (j * j - 3 * i * k > 0) {
              double x1, x2;
              x1 = (-j - sqrt(j * j - 3 * i * k)) / (3 * i);
              x2 = (-j + sqrt(j * j - 3 * i * k)) / (3 * i);
              int kta = 0;
              int ktb = 0;
              for (int x = -100; x <= 100; x++)
                if (x1 == x) {
                  kta = 1;
                  break;
                }
              for (int x = -100; x <= 100; x++)
                if (x2 == x) {
                  ktb = 1;
                  break;
                }
              if ((kta == 1) && (ktb == 1)) {
                dem = dem + 1;
                switch (dem) {
                  case 1:
                    result111 =
                        "Bài 1: Xét tính đơn điệu của hàm số y = $i .x^3 +$j .x^2 +$k .x +$h";
                    result1 = "Hàm số đồng biến trên (-oo; $x1) và ($x2; +oo)";
                    // y DB tren (-oo; (-b-sqrt(A'))/3a)U((-b+sqrt(A'))/3a; +oo)
                    result2 = "Hàm số nghịch biến trên ($x1 ; $x2 )";
                    break;
                  case 2:
                    result112 =
                        "Bài 2: Xét tính đơn điệu của hàm số y = $i .x^3 +$j .x^2 +$k .x +$h";
                    result3 = "Hàm số đồng biến trên (-oo; $x1) và ($x2; +oo)";
                    // y DB tren (-oo; (-b-sqrt(A'))/3a)U((-b+sqrt(A'))/3a; +oo)
                    result4 = "Hàm số nghịch biến trên ($x1 ; $x2 )";
                    break;
                  case 3:
                    result113 =
                        "Bài 3: Xét tính đơn điệu của hàm số y = $i .x^3 +$j .x^2 +$k .x +$h";
                    result5 = "Hàm số đồng biến trên (-oo; $x1) và ($x2; +oo)";
                    // y DB tren (-oo; (-b-sqrt(A'))/3a)U((-b+sqrt(A'))/3a; +oo)
                    result6 = "Hàm số nghịch biến trên ($x1 ; $x2 )";
                    break;
                  case 4:
                    result114 =
                        "Bài : Xét tính đơn điệu của hàm số y = $i .x^3 +$j .x^2 +$k .x +$h";
                    result7 = "Hàm số đồng biến trên (-oo; $x1) và ($x2; +oo)";
                    // y DB tren (-oo; (-b-sqrt(A'))/3a)U((-b+sqrt(A'))/3a; +oo)
                    result8 = "Hàm số nghịch biến trên ($x1 ; $x2 )";
                    break;
                  case 5:
                    result115 =
                        "Bài 5: Xét tính đơn điệu của hàm số y = $i .x^3 +$j .x^2 +$k .x +$h";
                    result9 = "Hàm số đồng biến trên (-oo; $x1) và ($x2; +oo)";
                    // y DB tren (-oo; (-b-sqrt(A'))/3a)U((-b+sqrt(A'))/3a; +oo)
                    result10 = "Hàm số nghịch biến trên ($x1 ; $x2 )";
                    break;
                }
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
          title: Text("Xét tính đơn điệu hàm số bậc 3"),
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
                        },
                        child: Text("Delete"),
                      ),
                      RaisedButton(
                        onPressed: () {
                          setState(() {
                            GiaiTDDHS1();
                          });
                        },
                        child: Text("Bài tập tương tự"),
                      ),
                    ],
                  ),
                  // cho viet de`
                  Text("Dang toán:",
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  Text(
                      "Xét tính đơn điệu của hàm số y = a*x^3 + b*x^2 + c*x + d"),
                  typeFunction != -1
                      ? Column(
                          children: [
                            Text("Đề bài",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            Text(
                                "Xét tính đơn điệu của hàm số y = ${aTextEditingController.text}x^3 + ${bTextEditingController.text}x^2 + ${cTextEditingController.text}x + ${dTextEditingController.text}"),
                            // Text("Delta' $answerDelta_phay"),
                            // Text("$result1"),
                            Text(
                              "Đáp án: ",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text("$_result1",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            Text("$_result2",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            Text("$_result3",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            Text(
                              "$result111",
                            ),
                            Text("$result1",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            Text("$result2",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            Text(
                              "$result112",
                            ),
                            Text("$result3",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            Text("$result4",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            Text(
                              "$result113",
                            ),
                            Text("$result5",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            Text("$result6",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            Text(
                              "$result114",
                            ),
                            Text("$result7",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            Text("$result8",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            Text(
                              "$result115",
                            ),
                            Text("$result9",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            Text("$result10",
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
