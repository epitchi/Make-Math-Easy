import 'dart:math';
import 'package:flutter/material.dart';
import 'package:solveMathApp/widgets/widget.dart';

class NoTSXTDDHPTPage extends StatefulWidget {
  @override
  _NoTSXTDDHPTPageState createState() => _NoTSXTDDHPTPageState();
}

List listAnswer = new List<String>();

class _NoTSXTDDHPTPageState extends State<NoTSXTDDHPTPage> {
  TextEditingController aTextEditingController = new TextEditingController();
  TextEditingController bTextEditingController = new TextEditingController();
  TextEditingController cTextEditingController = new TextEditingController();
  TextEditingController dTextEditingController = new TextEditingController();
  TextEditingController eTextEditingController = new TextEditingController();

  final formKey = GlobalKey<FormState>();
  int typeFunction = -1;
  String result1 = "";
  String result2 = "";
  String result3 = "";
  String result4 = "";
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
  double ans_delta_cuatu;
  GiaiTDDHS() {
    double a = double.parse(aTextEditingController.text);
    double b = double.parse(bTextEditingController.text);
    double c = double.parse(cTextEditingController.text);
    double d = double.parse(dTextEditingController.text);
    double e = double.parse(eTextEditingController.text);

    ans_delta_cuatu = 0;
    typeFunction = 0;
    result1 = "";

    //y=(ax^2+bx+c)/(dx+e)
    //đkxd x khac -e/d
    //y_phay=((a*d)*pow(x,2) + 2*a*e*x + (b*e-c*d))/pow((d*x+e),2)

    double delta_cuatu = pow((a * e), 2) - a * d * (b * e - c * d);
    ans_delta_cuatu = delta_cuatu;
    if (delta_cuatu <= 0) {
      if (a * d > 0) {
        result1 = "Hàm số đồng biến trên (-oo; ${-e / d}) và (${-e / d}; +oo)";
      } else if (a * d < 0) {
        result1 =
            "Hàm số nghịch biến trên (-oo; ${-e / d}) và (${-e / d}; +oo)";
      }
    } else if (delta_cuatu > 0) {
      if (a * d > 0) {
        double x1 = (-a * e - sqrt(delta_cuatu)) / (a * d);
        double x2 = (-a * e + sqrt(delta_cuatu)) / (a * d);
        if (-e / d < x1)
          result1 =
              "Hàm số đồng biến trên (-oo; ${-e / d}) và (${-e / d};$x1) và ($x2; +oo) và hàm số nghịch biến trên ($x1;$x2)";
        else if ((x1 < -e / d) && (-e / d < x2))
          result1 =
              "Hàm số đồng biến trên (-oo; $x1) và ($x2; +oo) và hàm số nghịch biến trên ($x1;${-e / d}) và (${-e / d};$x2)";
        else if (x2 < -e / d)
          result1 =
              "Hàm số đồng biến trên (-oo;$x1) và (x2; ${-e / d}) và (${-e / d}; +oo) và hàm số nghịch biến trên ($x1;$x2)";
      } else if (a * d < 0) {
        double x1 = (-a * e + sqrt(delta_cuatu)) / (a * d);
        double x2 = (-a * e - sqrt(delta_cuatu)) / (a * d);
        if (-e / d < x1)
          result1 =
              "Hàm số nghịch biến trên (-oo; ${-e / d}) và (${-e / d};$x1) và ($x2; +oo) và hàm số đồng biến trên ($x1;$x2)";
        else if ((x1 < -e / d) && (-e / d < x2))
          result1 =
              "Hàm số nghịch biến trên (-oo; $x1) và ($x2; +oo) và hàm số đồng biến trên ($x1;${-e / d}) và (${-e / d};$x2)";
        else if (x2 < -e / d)
          result1 =
              "Hàm số nghịch biến trên (-oo;$x1) U ($x2; ${-e / d}) U (${-e / d}; +oo) và hàm số đồng điến trên ($x1;$x2)";
      }
    }
  }

  GiaiTDDHS1() {
    td = "Một số bài tập tương tự bài toán của bạn!!!!!";
    db1 = "Bài 1: Xét tính đơn điệu của hàm số y = (2.x + 1)/(x+1)";
    da1 = "Hàm số đồng biến trên khoảng (-oo;-1) và (-1;+oo)";
    db2 = "Bài 2: Xét tính đơn điệu của hàm số y = (-1.x^2 + 2.x - 1)/(x+2)";
    da2 =
        "Hàm số đồng biến trên khoảng (-5;-2) và (-2;1), nghịch biến trên khoảng (-oo;-5) và (1;+oo)";
    db3 = "Bài 3: Xét tính đơn điệu của hàm số y = (x^2 - x + 1)/(x – 1)";
    da3 =
        "Hàm số đồng biến trên khoảng (-oo;0) và (2;+oo), nghịch biến trên khoảng (0;1) và (1;2)";
    db4 = "Bài 4: Xét tính đơn điệu của hàm số y = (-1.x^2 + 2.x - 4)/(x – 2)";
    da4 =
        "Hàm số đồng biến trên khoảng(0;2) và (2;4), nghịch biến trên khoảng (-oo;0) và (4;+oo)";

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
          title: Text("Xét tính đơn điệu hàm phân thức"),
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
                      "Xét tính đơn điệu của hàm số y = (ax^2 + bx + c)/(dx + e) (a có thể bằng 0)"),
                  typeFunction != -1
                      ? Column(
                          children: [
                            Text("Đề bài",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            Text(
                                "Xét tính đơn điệu của hàm số y = (${aTextEditingController.text}x^2 + ${bTextEditingController.text}x + ${cTextEditingController.text})/(${dTextEditingController.text}x + ${eTextEditingController.text})"),
                            // Text("Delta' $answerDelta_phay"),
                            // Text("$result1"),
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
                            Text(
                              "$db4",
                            ),
                            Text("$da4",
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
