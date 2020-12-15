import 'dart:math';
import 'package:flutter/material.dart';
import 'package:solveMathApp/widgets/widget.dart';

class NoTSLNNNHPTPage extends StatefulWidget {
  @override
  _NoTSLNNNHPTPage createState() => _NoTSLNNNHPTPage();
}

List listAnswer = new List<String>();

class _NoTSLNNNHPTPage extends State<NoTSLNNNHPTPage> {
  TextEditingController aTextEditingController = new TextEditingController();
  TextEditingController bTextEditingController = new TextEditingController();
  TextEditingController cTextEditingController = new TextEditingController();
  TextEditingController dTextEditingController = new TextEditingController();
  TextEditingController eTextEditingController = new TextEditingController();
  TextEditingController mTextEditingController = new TextEditingController();
  TextEditingController nTextEditingController = new TextEditingController();
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
    int m = int.parse(mTextEditingController.text);
    int n = int.parse(nTextEditingController.text);
    ans_delta_cuatu = 0;
    typeFunction = 0;
    result1 = "";

    //y=(ax^2+bx+c)/(dx+e)
    //đkxd x khac -e/d
    //y_phay=((a*d)*pow(x,2) + 2*a*e*x + (b*e-c*d))/pow((d*x+e),2)

    double max = -1000000;
    double min = 1000000;
    int k = (n - m) * 1000;
    for (int i = k; i >= 0; i--) {
      double f, x;
      x = m + i / 1000;
      f = (a * pow(x, 2) + b * pow(x, 1) + c) / (d * x + e);
      if (max < f) max = f;
      if (min > f) min = f;
    }
    result1 = " GTLN của hàm số là $max";
    result2 = " GTNN của hàm số là $min";
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
          title: Text("Tìm GTLN, GTNN của hàm phân thức"),
        ),
        body: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height - 2,
            // alignment: Alignment.bottomCenter,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 5),
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
                          leading: Text("m"),
                          title: TextFormField(
                            keyboardType: TextInputType.number,
                            controller: mTextEditingController,
                            decoration: textFieldInputDecoration("Điền m"),
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
                          leading: Text("n"),
                          title: TextFormField(
                            keyboardType: TextInputType.number,
                            controller: nTextEditingController,
                            decoration: textFieldInputDecoration("Điền n"),
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
                          mTextEditingController.text = "";
                          nTextEditingController.text = "";
                        },
                        child: Text("Nhập lại"),
                      ),
                    ],
                  ),
                  // type Function
                  Text("Dang toán:",
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  Text(
                      "Tìm GTLN, GTNN của hàm số y = (ax^2 + bx + c)/(dx + e) (a có thể bằng 0) trên đoạn [m,n]"),
                  typeFunction != -1
                      ? Column(
                          children: [
                            Text("Đề bài",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            Text(
                                "Tìm GTLN,GTNN của hàm số y = (${aTextEditingController.text}x^2 + ${bTextEditingController.text}x + ${cTextEditingController.text})/(${dTextEditingController.text}x + ${eTextEditingController.text}) trên [${mTextEditingController.text};${nTextEditingController.text}]"),
                            // Text("Delta' $answerDelta_phay"),
                            // Text("$result1"),
                            Text(
                              "Đáp án: ",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text("$result1",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            Text("$result2",
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
