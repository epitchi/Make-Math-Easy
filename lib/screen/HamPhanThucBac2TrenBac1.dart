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
    if (delta_cuatu < 0) {
      if (a * d > 0) {
        result1 = "Y Đồng Biến trên (-oo; ${-e / d}) U (${-e / d}; +oo)";
      } else if (a * d < 0) {
        result1 = "y Nghịch Biến trên (-oo; ${-e / d}) U (${-e / d}; +oo)";
      }
    } else if (delta_cuatu == 0) {
      if (a * d > 0) {
        if (-a * e / a * d > -e / d)
          result1 =
              "Y Đồng Biến trên (-oo; ${-e / d}) U (${-e / d};${-a * e / a * d}) U (${-a * e / a * d}; +oo)";
        else if (-a * e / a * d == -e / d)
          result1 = "Y Đồng Biến trên (-oo; ${-e / d}) U (${-e / d}; +oo)";
        else if (-a * e / a * d < -e / d)
          result1 =
              "Y Đồng Biến trên (-oo; ${-a * e / a * d}) U (${-a * e / a * d};${-e / d}) U (${-e / d}; +oo)";
      } else if (a * d < 0) {
        if (-a * e / a * d > -e / d)
          result1 =
              "Y Đồng Biến trên (-oo; ${-e / d}) U (${-e / d};${-a * e / a * d}) U (${-a * e / a * d}; +oo)";
        else if (-a * e / a * d == -e / d)
          result1 = "Y Đồng Biến trên (-oo; ${-e / d}) U (${-e / d}; +oo)";
        else if (-a * e / a * d < -e / d)
          result1 =
              "Y Đồng Biến trên (-oo; ${-a * e / a * d}) U (${-a * e / a * d};${-e / d}) U (${-e / d}; +oo)";
      }
    } else if (delta_cuatu > 0) {
      double x1 = (-a * e - sqrt(delta_cuatu)) / a * d;
      double x2 = (-a * e + sqrt(delta_cuatu)) / a * d;
      if (a * d > 0) {
        if (-e / d < x1)
          result1 =
              "Y Đồng Biến trên (-oo; ${-e / d}) U (${-e / d};$x1) U ($x2; +oo) và Nghịch Biến trên ($x1;$x2)";
        else if ((x1 < -e / d) && (-e / d < x2))
          result1 =
              "Y Đồng Biến trên (-oo; $x1) U ($x2; +oo) và Nghịch Biến trên ($x1;${-e / d}) U (${-e / d};$x2)";
        else if (x2 < -e / d)
          result1 =
              "Y Đồng Biến trên (-oo;$x1) U (x2; ${-e / d}) U (${-e / d}; +oo) và Nghịch Biến trên ($x1;$x2)";
      } else if (a * d < 0) {
        if (-e / d < x1)
          result1 =
              "Y Nghịch Biến trên (-oo; ${-e / d}) U (${-e / d};$x1) U ($x2; +oo) và Đồng Biến trên ($x1;$x2)";
        else if ((x1 < -e / d) && (-e / d < x2))
          result1 =
              "Y Nghịch Biến trên (-oo; $x1) U ($x2; +oo) và Đồng Biến trên ($x1;${-e / d}) U (${-e / d};$x2)";
        else if (x2 < -e / d)
          result1 =
              "Y Nghịch Biến trên (-oo;$x1) U ($x2; ${-e / d}) U (${-e / d}; +oo) và Đồng Biến trên ($x1;$x2)";
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
          title: Text("Hàm phân thức bậc 2 trên bậc 1"),
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
                          leading: Text("E"),
                          title: TextFormField(
                            keyboardType: TextInputType.number,
                            controller: eTextEditingController,
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
                  typeFunction != -1
                      ? Column(
                          children: [
                            Text("Delta của tử $ans_delta_cuatu"),
                            Text("$result1"),
                          ],
                        )
                      : Text("Không giải được")
                ],
              ),
            ),
          ),
        ));
  }
}
