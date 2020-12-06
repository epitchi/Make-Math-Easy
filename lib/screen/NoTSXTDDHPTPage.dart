import 'dart:math';
import 'package:flutter/material.dart';
import 'package:solveMathApp/widgets/widget.dart';

class NoTSXTDDHPTPage extends StatefulWidget {
  @override
  _NoTSXTDDHPTPageState createState() =>
      _NoTSXTDDHPTPageState();
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
        result1 = "Hàm số nghịch biến trên (-oo; ${-e / d}) và (${-e / d}; +oo)";
      }
    } else if (delta_cuatu > 0) {
      double x1 = (-a * e - sqrt(delta_cuatu)) / (a * d);
      double x2 = (-a * e + sqrt(delta_cuatu)) / (a * d);
      if (a * d > 0) {
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
          title: Text("Hàm phân thức"),
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
                        child: Text("Solve"),
                      ),
                      RaisedButton(
                        onPressed: () {
                          aTextEditingController.text = "";
                          bTextEditingController.text = "";
                          cTextEditingController.text = "";
                          dTextEditingController.text = "";
                          eTextEditingController.text = "";
                        },
                        child: Text("Delete"),
                      ),
                    ],
                  ),
                  // type Function
                  Text("Dang toán:",
                  style: TextStyle(fontWeight: FontWeight.bold)),
                  Text("Xét tính đơn điệu của hàm số y = (ax^2 + bx + c)/(dx + e) (a có thể bằng 0)"),
                  typeFunction != -1
                      ? Column(
                          children: [
                            Text("Đề bài",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                                Text(
                                "Xét tính đơn điệu của hàm số y = (${aTextEditingController.text}*x^2 + ${bTextEditingController.text}*x + ${cTextEditingController.text})/(${dTextEditingController.text}*x + ${eTextEditingController.text})"),
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
                      : Text("Bạn chưa nhập đề bài hoặc đề bài của bạn không đúng cấu trúc! Bạn hãy nhập đề bài vào theo đúng dạng nha")
                ],
              ),
            ),
          ),
        ));
  }
}
