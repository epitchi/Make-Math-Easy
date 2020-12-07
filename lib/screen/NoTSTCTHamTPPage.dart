import 'dart:math';
import 'package:flutter/material.dart';
import 'package:solveMathApp/widgets/widget.dart';

class NoTSTCTHTPPage extends StatefulWidget {
  @override
  _NoTSTCTHTPPageState createState() => _NoTSTCTHTPPageState();
}

List listAnswer = new List<String>();

class _NoTSTCTHTPPageState extends State<NoTSTCTHTPPage> {
  TextEditingController aTextEditingController = new TextEditingController();
  TextEditingController bTextEditingController = new TextEditingController();
  TextEditingController cTextEditingController = new TextEditingController();

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

    typeFunction = 0;
    result1 = "";
    result2 = "";
    result3 = "";
    result4 = "";

// y=ax^4 + bx^2 + c
    // y_phay = 4ax^3 + 2bx
    // y_phay= 2x(2ax^2 + b)

    double delta_trongngoac = -2 * a * b;
    answerDelta_phay = delta_trongngoac;

    if (a * b > 0) {
      if ((a > 0) && (b > 0))
        result1 = " Hàm số đạt cực tiểu tại x=0 và giá trị cực tiểu là $c";
      else if ((a < 0) && (b < 0))
        result1 = " Hàm số đạt cực đại tại x=0 và giá trị cực đại là $c";
    } else {
      double x1 = -sqrt(-2 * a * b) / (2 * a);
      double x2 = sqrt(-2 * a * b) / (2 * a);
      double y1 = a * pow(x1, 4) + b * pow(x1, 2) + c;
      double y2 = a * pow(x2, 4) + b * pow(x2, 2) + c;
      if ((a > 0) && (b < 0)) {
        result1 =
            "Hàm số đạt cực tiểu  tại x = $x1 và x =$x2 và giá trị cực tiểu là $y1";
        result2 = "Hàm số đạt cực đại tại x = 0 và giá trị cực đại là $c";
      } else if ((a < 0) && (b > 0)) {
        result1 =
            "Hàm số đạt cực đại  tại x = $x1 và x =$x2 và giá trị cực đại là $y1";
        result2 = "Hàm số đạt cực tiểu tại x = 0 và giá trị cực tiểu là $c";
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
          title: Text("Tìm điểm cực trị hàm trùng phương y = ax^4 + bx^2 + c"),
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
                  // cho viet de`
                  Text("Dang toán:",
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  Text("Tìm điểm cực trị của hàm số y = a*x^4 + b*x^2 + c"),
                  typeFunction != -1
                      ? Column(
                          children: [
                            Text("Đề bài",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            Text(
                                "Tìm điểm cực trị của hàm số y = ${aTextEditingController.text}x^4 + ${bTextEditingController.text}x^2 + ${cTextEditingController.text}"),
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
