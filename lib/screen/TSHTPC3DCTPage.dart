import 'dart:math';
import 'package:flutter/material.dart';
import 'package:solveMathApp/widgets/widget.dart';

class TSHTPCO3DCTPage extends StatefulWidget {
  @override
  _TSHTPCO3DCTPageState createState() => _TSHTPCO3DCTPageState();
}

List listAnswer = new List<String>();

class _TSHTPCO3DCTPageState extends State<TSHTPCO3DCTPage> {
  TextEditingController aTextEditingController = new TextEditingController();
  TextEditingController bTextEditingController = new TextEditingController();
  TextEditingController cTextEditingController = new TextEditingController();
  TextEditingController dTextEditingController = new TextEditingController();
  TextEditingController eTextEditingController = new TextEditingController();
  TextEditingController fTextEditingController = new TextEditingController();
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
    double f = double.parse(fTextEditingController.text);
    ans_delta_cuatu = 0;
    typeFunction = 0;
    result1 = "";

    //y=(ax^2+bx+c)/(dx+e)
    //đkxd x khac -e/d
    //y_phay=((a*d)*pow(x,2) + 2*a*e*x + (b*e-c*d))/pow((d*x+e),2)

    double delta_cuatu = e * e - 4 * d * f;
    ans_delta_cuatu = delta_cuatu;
    if (a == 0) {
      if (b == 0)
        result1 = "Không có giá trị của m";
      else {
        if (b * c < 0) result1 = "Giá trị m thuộc (${-d / c};+oo )";
        if (b * c > 0) result1 = " Giá trị của m thuộc (-oo;${-d / c}) ";
        if (b * c == 0) if (b * d < 0)
          result1 = " Với mọi giá trị của m";
        else
          result1 = " Không có giá trị m thỏa";
      }
    } else {
      double delta = pow((a * d + b * c), 2) - 4 * (a * c * b * d);
      if (a * c == 0) {
        if (a * d < 0) result1 = "Giá trị m thuộc (${-b / a};+oo )";
        if (a * d > 0) result1 = " Giá trị của m thuộc (-oo;${-b / a}) ";
        if (a * d == 0) if (b * d < 0)
          result1 = " Với mọi giá trị của m";
        else
          result1 = " Không có giá trị m thỏa";
      } else {
        if (delta < 0) {
          if (a * c > 0) result1 = "Không có giá trị m thỏa ";
          if (a * c < 0) result1 = "Với mọi giá trị của m";
        }
        if (delta == 0) {
          if (a * c < 0)
            result1 = "Với mọi giá trị khác ${-(a * d + b * c) / (2 * a * c)} ";
          if (a * c > 0) result1 = "Không có giá trị m thỏa ";
        }
        if (delta > 0) {
          double x1 = (-(a * d + b * c) - sqrt(delta)) / (2 * a * c);
          double x2 = (-(a * d + b * c) + sqrt(delta)) / (2 * a * c);
          if (a * c > 0) result1 = "Giá trị của m thuộc ($x1 ; $x2 ) ";
          if (a * c < 0)
            result1 = "Giá trị của m thuộc (-oo;$x1) U ($x2 ; +oo) ";
        }
      }
    }
  }

  GiaiTDDHS1() {
    td = "Một số bài tập tương tự bài toán của bạn!!!!!";
    db1 = "Bài 1: Tìm GTLN, GTNN của hàm số y = (x-1)/(x+1) trên [0;3]";
    da1 = "GTNN của hàm số là -1 và GTLN của hàm số là 0.5";
    db2 =
        "Bài 2: Tìm GTLN, GTNN của hàm số y = (x^2 - x -1)/(x + 1) trên [1;6]";
    da2 = "GTNN của hàm số là -0.5 và GTLN của hàm số là 33/7";
    db3 =
        "Bài 3: Tìm GTLN, GTNN của hàm số y = (x^2 - 8x + 7)/(x^2 + 1)  trên [-3;5]";
    da3 = "GTNN của hàm số là -1 và GTLN của hàm số là 8";
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
          title: Text("Tìm m hàm số trùng phương có 3 điểm cực trị"),
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
                          fTextEditingController.text = "";
                        },
                        child: Text("Delete"),
                      ),
                    ],
                  ),
                  // type Function
                  Text("Dang toán:",
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  Text(
                      "Tìm m để hàm số y = (am+b)x^4 + (cm+d)x^2 + em+f có ba điểm cực trị"),
                  typeFunction != -1
                      ? Column(
                          children: [
                            Text("Đề bài",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            Text(
                                "Tìm m để hàm số y = (${aTextEditingController.text}m+${bTextEditingController.text})x^4 + (${cTextEditingController.text}m+${dTextEditingController.text})x^2 + ${eTextEditingController.text}m+${fTextEditingController.text} có ba điểm cực trị"),
                            // Text("Delta' $answerDelta_phay"),
                            // Text("$result1"),
                            Text(
                              "Đáp án: ",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text("$result1",
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
