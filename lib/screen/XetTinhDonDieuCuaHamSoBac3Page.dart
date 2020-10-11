import 'dart:math';

import 'package:flutter/material.dart';
import 'package:solveMathApp/widgets/widget.dart';

class XTDDCHS3Page extends StatefulWidget {
  @override
  _XTDDCHS3PageState createState() => _XTDDCHS3PageState();
}

List listAnswer = new List<String>();

class _XTDDCHS3PageState extends State<XTDDCHS3Page> {
  TextEditingController aTextEditingController = new TextEditingController();
  TextEditingController bTextEditingController = new TextEditingController();
  TextEditingController cTextEditingController = new TextEditingController();
  TextEditingController dTextEditingController = new TextEditingController();

  final formKey = GlobalKey<FormState>();
  int typeFunction = -1;
  String result1 = "";
  String result2 = "";
  String result3 = "";

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
    result1 = "";
    result2 = "";
    result3 = "";
    if (delta_phay < 0) {
      //y' cung dau' voi' a
      result1 = "Y cùng dấu với a";
      if (a > 0) {
        //y' > 0
        result2 = "Y' > 0";
        // y DB tren |R
        result3 = "Y Đồng Biến trên |R";
      } else if (a < 0) {
        // y' < 0
        result2 = "Y' < 0";
        // y NB tren |R
        result3 = "Y Nghịch Biến trên |R";
      }
    } else if (delta_phay == 0) {
      result1 = "Phương trình có nghiệm kép \n x = ${-b / 3 * a}";
      // pt nghiem kep'
      // x = -b/3a
      if (a > 0) {
        result2 = "Y Đồng Biến trên (-oo; ${-b / 3 * a})U(${-b}/${3 * a};+oo)";
        // y db tren (-oo; -b/3a)U(-b/3a;+oo)
      } else if (a < 0) {
        //y nb tren -------------------------
        result2 = "Y Nghịch Biến trên (-oo; -b/3a)U(-b/3a;+oo)";
      }
    } else if (delta_phay > 0) {
      result1 =
          "Phương trình có 2 nghiệm phân biệt \n x1 = ${(-b - sqrt(delta_phay)) / 3 * a} \n x2 = ${(-b + sqrt(delta_phay)) / 3 * a}";

      //  2 nghiem pb
      //  x1 = (-b-sqrt(delta'))/3a
      //    x2 = (-b+sqrt(delta'))/3a
      if (a > 0) {
        result2 =
            "Y Đồng Biến trên (-oo; ${(-b - sqrt(delta_phay))}/${3 * a}) U ${(-b + sqrt(delta_phay))}/${3 * a}; +oo)";
        // y DB tren (-oo; (-b-sqrt(A'))/3a)U((-b+sqrt(A'))/3a; +oo)
        result3 =
            "Y Nghịch Biến trên (${(-b - sqrt(delta_phay)) / (3 * a)} ; ${(-b + sqrt(delta_phay)) / (3 * a)} )";
      } else if (a < 0) {
        result2 =
            "Y Đồng Biến trên (${(-b - sqrt(delta_phay)) / (3 * a)} ; ${(-b + sqrt(delta_phay)) / (3 * a)} )";
        // y DB tren (-oo; (-b-sqrt(A'))/3a)U((-b+sqrt(A'))/3a; +oo)

        result3 =
            "Y Nghịch Biến trên     (-oo; ${(-b - sqrt(delta_phay))}/${3 * a}) U ${(-b + sqrt(delta_phay))}/${3 * a}; +oo)";

        // y NB tren ((-b-sqrt(A'))/3a); (-b+sqrt(A'))/3a)

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
                        },
                        child: Text("Delete"),
                      ),
                    ],
                  ),
                  // type Function
                  typeFunction != -1
                      ? Column(
                          children: [
                            Text("Delta' $answerDelta_phay"),
                            Text("$result1"),
                            Text("$result2"),
                            Text("$result3"),
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
