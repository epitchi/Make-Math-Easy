import 'dart:math';
import 'package:flutter/material.dart';
import 'package:solveMathApp/widgets/widget.dart';

class NoTSLNNNHTPPage extends StatefulWidget {
  @override
  _NoTSLNNNHTPPageState createState() => _NoTSLNNNHTPPageState();
}

List listAnswer = new List<String>();

class _NoTSLNNNHTPPageState extends State<NoTSLNNNHTPPage> {
  TextEditingController aTextEditingController = new TextEditingController();
  TextEditingController bTextEditingController = new TextEditingController();
  TextEditingController cTextEditingController = new TextEditingController();

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
      f = a * pow(x, 4) + b * pow(x, 2) + c;
      if (max < f) max = f;
      if (min > f) min = f;
    }
    result1 = " GTLN của hàm số là $max";
    result2 = " GTNN của hàm số là $min";
  }

  GiaiTDDHS1() {
    td = "Một số bài tập tương tự bài toán của bạn!!!!!";
    db1 = "Bài 1: Tìm GTNN của hàm số y = x^4 - 4.x^2 + 9 trên [-2;3]";
    da1 = "GTNN của hàm số là 6 và GTLN của hàm số là 54";
    db2 = "Bài 2: Tìm GTNN của hàm số y = x^4 - x^2 + 13 trên [-2;3]";
    da2 = "GTNN của hàm số là 13 và GTLN của hàm số là 85";
    db3 = "Bài 3: Tìm GTNN của hàm số y = x^4 - 2x^2 + 3 trên [0;3]";
    da3 = "GTNN của hàm số là 2 và GTLN của hàm số là 66";
    db4 = "Bài 4: Tìm GTNN của hàm số y = x^4 - 4x^2 + 5 trên [-2;3]";
    da4 = "GTNN của hàm số là 2 và GTLN của hàm số là 50";
    db5 = "Bài 5: Tìm GTNN của hàm số y =  x^4 - 2x^2 + 1 trên [0;2]";
    da5 = "GTNN của hàm số là 0 và GTLN của hàm số là 9";
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
          title: Text("Tìm GTLN, GTNN của hàm số trùng phương"),
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
                      "Tìm GTLN, GTNN của hàm số y = ax^4 + bx^2 + c trên đoạn [m,n]"),
                  typeFunction != -1
                      ? Column(
                          children: [
                            Text("Đề bài",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            Text(
                                "Tìm GTLN, GTNN của hàm số y = ${aTextEditingController.text}x^4 + ${bTextEditingController.text}x^2 + ${cTextEditingController.text} trên đoạn [${mTextEditingController.text} ; ${nTextEditingController.text} ]."),
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
                            Text(
                              "$db4",
                            ),
                            Text("$da4",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            Text(
                              "$db5",
                            ),
                            Text("$da5",
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
