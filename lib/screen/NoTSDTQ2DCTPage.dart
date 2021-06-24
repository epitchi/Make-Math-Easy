import 'dart:math';
import 'package:catex/catex.dart';
import 'package:flutter/material.dart';
import 'package:solveMathApp/widgets/widget.dart';

class NoTSPTDTQ2DCTPage extends StatefulWidget {
  @override
  _NoTSPTDTQ2DCTPageState createState() => _NoTSPTDTQ2DCTPageState();
}

List listAnswer = new List<String>();

class _NoTSPTDTQ2DCTPageState extends State<NoTSPTDTQ2DCTPage> {
  TextEditingController aTextEditingController = new TextEditingController();
  TextEditingController bTextEditingController = new TextEditingController();
  TextEditingController cTextEditingController = new TextEditingController();
  TextEditingController dTextEditingController = new TextEditingController();
  TextEditingController mTextEditingController = new TextEditingController();
  TextEditingController nTextEditingController = new TextEditingController();

  final formKey = GlobalKey<FormState>();
  int typeFunction = -1;
  String _result1 = "";
  String _result2 = "";
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
  double ans_delta_cuatu;
  GiaiTDDHS() {
    double a = double.parse(aTextEditingController.text);
    double b = double.parse(bTextEditingController.text);
    double c = double.parse(cTextEditingController.text);
    double d = double.parse(dTextEditingController.text);

    ans_delta_cuatu = 0;
    typeFunction = 0;
    result1 = "";

    //y=(ax^2+bx+c)/(dx+e)
    //đkxd x khac -e/d
    //y_phay=((a*d)*pow(x,2) + 2*a*e*x + (b*e-c*d))/pow((d*x+e),2)

    double A, B;
    A = (6 * a * c - 2 * b * b) / (9 * a);
    B = (18 * a * d - 2 * b * c) / (18 * a);
    _result1 =
        " Phương trình đường thẳng qua hai điểm cực trị là y = $A x + $B";
  }

  GiaiTDDHS1() {
    double a = double.parse(aTextEditingController.text);
    double b = double.parse(bTextEditingController.text);
    double c = double.parse(cTextEditingController.text);
    double d = double.parse(dTextEditingController.text);

    ans_delta_cuatu = 0;
    typeFunction = 0;
    result1 = "";
    //y=(ax^2+bx+c)/(dx+e)
    //đkxd x khac -e/d
    //y_phay=((a*d)*pow(x,2) + 2*a*e*x + (b*e-c*d))/pow((d*x+e),2)
    _result2 = "Một số bài tập tương tự bài toán của bạn!!!!!";
    int dem = 0;
    for (int h = 1; h <= 10; h++)
      for (int j = 1; j <= 10; j++) {
        for (int k = 1; k <= 10; k++)
          for (int i = 1; i <= 10; i++)
            if (j * j - 3 * i * k > 0) {
              double A, B;
              A = (6 * i * k - 2 * j * j) / (9 * i);
              B = (18 * i * h - 2 * j * k) / (18 * i);
              int kta = 0;
              int ktb = 0;
              for (int x = -100; x <= 100; x++)
                if (A == x) {
                  kta = 1;
                  break;
                }
              for (int x = -100; x <= 100; x++)
                if (B == x) {
                  ktb = 1;
                  break;
                }
              if ((kta == 1) && (ktb == 1)) {
                dem = dem + 1;
                switch (dem) {
                  case 1:
                    result111 =
                        "Bài 1: Viết phương trình đường thẳng qua hai điểm cực trị của y = $i .x^3 +$j .x^2 +$k .x +$h";
                    result1 =
                        " Phương trình đường thẳng qua hai điểm cực trị là y = $A x + $B";
                    break;
                  case 2:
                    result112 =
                        "Bài 2: Viết phương trình đường thẳng qua hai điểm cực trị của y = $i .x^3 +$j .x^2 +$k .x +$h";
                    result2 =
                        " Phương trình đường thẳng qua hai điểm cực trị là y = $A x + $B";
                    break;
                  case 3:
                    result113 =
                        "Bài 3: Viết phương trình đường thẳng qua hai điểm cực trị của y = $i .x^3 +$j .x^2 +$k .x +$h";
                    result3 =
                        " Phương trình đường thẳng qua hai điểm cực trị là y = $A x + $B";
                    break;
                  case 4:
                    result114 =
                        "Bài : Viết phương trình đường thẳng qua hai điểm cực trị của y = $i .x^3 +$j .x^2 +$k .x +$h";
                    result4 =
                        " Phương trình đường thẳng qua hai điểm cực trị là y = $A x + $B";
                    break;
                  case 5:
                    result115 =
                        "Bài 5: Viết phương trình đường thẳng qua hai điểm cực trị của y = $i .x^3 +$j .x^2 +$k .x +$h";
                    result5 =
                        " Phương trình đường thẳng qua hai điểm cực trị là y = $A x + $B";
                    break;
                  case 6:
                    result116 =
                        "Viết phương trình đường thẳng qua hai điểm cực trị của y = $i .x^3 +$j .x^2 +$k .x +$h";
                    result6 =
                        " Phương trình đường thẳng qua hai điểm cực trị là y = $A x + $B";
                    break;
                  case 7:
                    result117 =
                        "Viết phương trình đường thẳng qua hai điểm cực trị của y = $i .x^3 +$j .x^2 +$k .x +$h";
                    result7 =
                        " Phương trình đường thẳng qua hai điểm cực trị là y = $A x + $B";
                    break;
                  case 8:
                    result118 =
                        "Viết phương trình đường thẳng qua hai điểm cực trị của y = $i .x^3 +$j .x^2 +$k .x +$h";
                    result8 =
                        " Phương trình đường thẳng qua hai điểm cực trị là y = $A x + $B";
                    break;
                  case 9:
                    result119 =
                        "Viết phương trình đường thẳng qua hai điểm cực trị của y = $i .x^3 +$j .x^2 +$k .x +$h";
                    result9 =
                        " Phương trình đường thẳng qua hai điểm cực trị là y = $A x + $B";
                    break;
                  case 10:
                    result1110 =
                        "Viết phương trình đường thẳng qua hai điểm cực trị của y = $i .x^3 +$j .x^2 +$k .x +$h";
                    result10 =
                        " Phương trình đường thẳng qua hai điểm cực trị là y = $A x + $B";
                    break;
                }
              }
              break;
            }
      }
  }

  String validateMobile(String value) {
    String pattern = r'(^(?:[+0]9)?[0-9]{20,42}$)';
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
          title: Text("Phương trình đường thẳng qua hai điểm cực trị"),
        ),
        body: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height - 50,
            // alignment: Alignment.bottomCenter,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 50),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Form(
                    key: formKey,
                    child: Column(
                      children: <Widget>[
                        Container(
                          margin: const EdgeInsets.all(15.0),
                          padding: const EdgeInsets.all(3.0),
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.black54)),
                          child: CaTeX(r'\ y = a.x^3 + b.x^2 + c.x + d'),
                        ),
                        SizedBox(height: 10.0),
                        
                        
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
                          mTextEditingController.text = "";
                          nTextEditingController.text = "";
                        },
                        child: Text("Delete"),
                      ),
                      RaisedButton(
                        onPressed: () {
                          setState(() {
                            GiaiTDDHS1();
                          });
                        },
                        child: Text("Bài tương tự"),
                      ),
                    ],
                  ),
                  // type Function
                  Text("Dang toán:",
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  Text(
                      "Viết phương trình đường thẳng qua 2 điểm cực trị của hàm số y = ax^3 + bx^2 + cx + d"),
                  typeFunction != -1
                      ? Column(
                          children: [
                            Text("Đề bài",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            Text(
                                "Viết phương trình đường thẳng qua 2 điểm cực trị của hàm số y = ${aTextEditingController.text}x^3 + ${bTextEditingController.text}x^2 + ${cTextEditingController.text}x + ${dTextEditingController.text}"),
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
                            Text(
                              "$result111",
                            ),
                            Text("$result1",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            Text(
                              "$result112",
                            ),
                            Text("$result2",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            Text(
                              "$result113",
                            ),
                            Text("$result3",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            Text(
                              "$result114",
                            ),
                            Text("$result4",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            Text(
                              "$result115",
                            ),
                            Text("$result5",
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
