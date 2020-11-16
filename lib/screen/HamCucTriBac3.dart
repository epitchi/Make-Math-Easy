import 'dart:math';
import 'package:flutter/material.dart';
import 'package:solveMathApp/widgets/widget.dart';

class NoTSTCTHCTB3Page extends StatefulWidget {
  @override
  _NoTSTCTHCTB3PageState createState() => _NoTSTCTHCTB3PageState();
}

List listAnswer = new List<String>();

class _NoTSTCTHCTB3PageState extends State<NoTSTCTHCTB3Page> {
  TextEditingController aTextEditingController = new TextEditingController();
  TextEditingController bTextEditingController = new TextEditingController();
  TextEditingController cTextEditingController = new TextEditingController();
  TextEditingController dTextEditingController = new TextEditingController();

  final formKey = GlobalKey<FormState>();
  int typeFunction = -1;
  String result1 = "";
  String result2 = "";
  String result3 = "";
  String result4 = "";

  double answerDelta_phay;
  GiaiTDDHS() {
    double a = double.parse(aTextEditingController.text);
    double b = double.parse(bTextEditingController.text);
    double c = double.parse(cTextEditingController.text);
    double d = double.parse(dTextEditingController.text);

    typeFunction = 0;
    result1 = "";
    result2 = "";
    result3 = "";
    result4 = "";

    // y=ax^3 + bx^2 + cx + d
    // y_phay = 3ax^2 + 2bx + c

    double delta_yphay = pow(b, 2) - 3 * a * c;
    answerDelta_phay = delta_yphay;

    if (delta_yphay < 0 || delta_yphay == 0)
      result1 = "Hàm số không có cực trị";
    else if (delta_yphay > 0) {
      double x1 = (-b - sqrt(delta_yphay)) / 3 * a;
      double x2 = (-b + sqrt(delta_yphay)) / 3 * a;
      double y1 = a * pow(x1, 3) + b * pow(x1, 2) + c * x1 + d;
      double y2 = a * pow(x2, 3) + b * pow(x2, 2) + c * x2 + d;
      if (a > 0)
        result1 =
            "Hàm số có cực đại tại $x1 \nGiá trị cực đại là $y1 \nHàm số đạt cực tiểu tại $x2 \nGiá trị cực tiểu là $y2\n";
      else if (a < 0)
        result1 =
            "Hàm số có cực đại tại $x2 \nGiá trị cực đại là $y2 \nHàm số đạt cực tiểu tại$x1 \nGiá trị cực tiểu là $y1";
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
          title: Text("Tìm cực trị của hàm số bậc 3 y=ax^3 +bx^2 + cx + d "),
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
                    ],
                  ),
                  // type Function
                  typeFunction != -1
                      ? Column(
                          children: [
                            Text(
                                "Đề bài: Tìm cực trị của hàm số y = ${aTextEditingController.text}*x^3 + ${bTextEditingController.text}*x^2 + ${cTextEditingController.text}*x + ${dTextEditingController.text}"),
                            Text("Đáp số:"),
                            // Text("Delta' $answerDelta_phay"),
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
