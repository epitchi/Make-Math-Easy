import 'dart:math';

import 'package:flutter/material.dart';
import 'package:solveMathApp/widgets/widget.dart';

class TSHSB3_FoundMNBRPage extends StatefulWidget {
  @override
  _TSHSB3_FoundMNBRPageState createState() => _TSHSB3_FoundMNBRPageState();
}

List listAnswer = new List<String>();

class _TSHSB3_FoundMNBRPageState extends State<TSHSB3_FoundMNBRPage> {
  TextEditingController aTextEditingController = new TextEditingController();
  TextEditingController bTextEditingController = new TextEditingController();
  TextEditingController cTextEditingController = new TextEditingController();
  TextEditingController dTextEditingController = new TextEditingController();
  TextEditingController fTextEditingController = new TextEditingController();
  TextEditingController eTextEditingController = new TextEditingController();
  TextEditingController gTextEditingController = new TextEditingController();
  TextEditingController hTextEditingController = new TextEditingController();

  final formKey = GlobalKey<FormState>();
  int typeFunction = -1;
  String result1 = "";
  String result2 = "";
  String result3 = "";

  double answerDelta_phay;
  GiaiTDDHS() {
    result1 = "";

    double a = double.parse(aTextEditingController.text);
    double b = double.parse(bTextEditingController.text);
    double c = double.parse(cTextEditingController.text);
    double d = double.parse(dTextEditingController.text);
    double f = double.parse(fTextEditingController.text);
    double _e = double.parse(eTextEditingController.text);

    typeFunction = 0;
    double delta;
    // double A, B, C;
    double x0, x1, x2;
    double _B = 2 * c * d - 3 * a * f - 3 * b * _e;
    double _A = c * c - 3 * a * _e;
    double _C = d * d - 3 * b * f;
    delta = _B * _B - 4 * _A * _C;
    if (a > 0) {
      if (_A < 0) {
        x0 = -_B / (2 * _A);
        if (delta < 0) result1 = "Giá trị của m thuộc ( ${(-b / a)} ; +oo )";
        if (delta == 0) result1 = "Giá trị của m thuộc ( ${(-b / a)} ; +oo )";
        if (delta > 0) {
          x1 = (-_B + sqrt(delta)) / (2 * _A);
          x2 = (-_B - sqrt(delta)) / (2 * _A);
          if (-b / a < x1)
            result1 = "Giá trị của m thuộc (${(-b / a)} ; $x1 ] U [$x2 ; +oo)";
          else if (-b / a < x2)
            result1 = "Giá trị của m thuộc [$x2 ; +oo)";
          else
            result1 = "Giá trị của m thuộc (${(-b / a)} ; +oo)";
        }
      }
      if (_A > 0) {
        x0 = -_B / (2 * _A);
        if (delta < 0) result1 = "Không có giá trị của m thỏa yêu cầu bài toán";
        if (delta == 0) if (-_B / (2 * _A) > -b / a)
          result1 = "Giá trị của m là m = ${(-_B / 2 * _A)}";
        if (delta > 0) {
          x1 = (-_B - sqrt(delta)) / (2 * _A);
          x2 = (-_B + sqrt(delta)) / (2 * _A);
          if (-b / a < x1)
            result1 = "Giá trị của m thuộc [ $x1 ; $x2 ]";
          else if (-b / a < x2)
            result1 = "Giá trị của m thuộc (${(-b / a)} ;$x1 ]";
          else
            result1 = "Không có giá trị của m thỏa yêu cầu bài toán";
        }
      }
      if ((_A == 0) && (_B == 0)) if (_C == 0)
        result1 = "Giá trị cua m thuộc ( ${(-b / a)} ; +oo)";
      else if (_C < 0)
        result1 = "Giá trị của m thuộc ( ${(-b / a)} ; +oo)";
      else
        result1 = "Không có giá trị của m thỏa yêu cầu bài toán";
      if ((_A == 0) && (_B > 0)) if ((-b / a) < (-_C / _B))
        result1 = "Giá trị của m thuộc ( ${(-b / a)} ; ${(-_C / _B)} ]";
      else
        result1 = "Không có giá trị của m thỏa yêu cầu bài toán";
      if ((_A == 0) && (_B < 0)) if ((-b / a) < (-_C / _B))
        result1 = "Giá trị của m thuộc [ ${(-_C / _B)} ; +oo)";
      else
        result1 = "Giá trị của m thuộc [ ${(-b / a)} ; +oo)";
    }
    if (a < 0) {
      if (_A < 0) {
        x0 = -_B / (2 * _A);
        if (delta < 0) result1 = "Giá trị của m thuộc (-oo ;  ${(-b / a)} )";
        if (delta == 0) result1 = "Giá trị của m thuộc (-oo ; ${(-b / a)} )";
        if (delta > 0) {
          x1 = (-_B + sqrt(delta)) / (2 * _A);
          x2 = (-_B - sqrt(delta)) / (2 * _A);
          if (-b / a < x1)
            result1 = "Giá trị của m thuộc (-oo ; ${(-b / a)} )";
          else if (-b / a < x2)
            result1 = "Giá trị của m thuộc (-oo ;  $x1 ]";
          else
            result1 = "Giá trị của m thuộc (-oo ;  $x1] U [ $x2 ; ${(-b / a)})";
        }
      }
      if (_A > 0) {
        x0 = -_B / (2 * _A);
        if (delta < 0) result1 = "Không có giá trị của m thỏa yêu cầu bài toán";
        if (delta == 0) if (-_B / (2 * _A) > -b / a)
          result1 = "Giá trị của m la m = ${(-_B / 2 * _A)}";
        if (delta > 0) {
          x1 = (-_B - sqrt(delta)) / (2 * _A);
          x2 = (-_B + sqrt(delta)) / (2 * _A);
          if (-b / a > x2)
            result1 = "Giá trị của m thuộc  [ $x1 ; $x2 ]";
          else if (-b / a > x1)
            result1 = "Giá trị của m thuộc [ $x1 ; ${(-b / a)} )";
          else
            result1 = "Không có giá trị của m thỏa yêu cầu bài toán";
        }
      }
      if ((_A == 0) && (_B == 0)) if (_C == 0)
        result1 = "Giá trị của m thuộc (-oo ; ${(-b / a)} )";
      else if (_C < 0)
        result1 = "Giá trị của m thuộc (-oo ;${(-b / a)} )";
      else
        result1 = "Không có giá trị của m thỏa yêu cầu bài toán";
      if ((_A == 0) && (_B > 0)) if ((-b / a) > (-_C / _B))
        result1 = "Giá trị của m thuộc ( ${(-_C / _B)} ; ${(-b / a)} ]";
      else
        result1 = "Không có giá trị của m thỏa yêu cầu bài toán";
      if ((_A == 0) && (_B < 0)) if ((-b / a) > (-_C / _B))
        result1 = "Giá trị của m thuộc (-oo ; ${(-_C / _B)} )";
      else
        result1 = "Giá trị của m thuộc (-oo ; ${(-b / a)} )";
    }
    if (a == 0) {
      if (b < 0) result1 = "Không có giá trị của m thỏa yêu cầu bài toán";
      if (b > 0) {
        if (_A < 0) if (delta > 0) {
          x1 = (-_B - sqrt(delta)) / (2 * _A);
          x2 = (-_B + sqrt(delta)) / (2 * _A);
          result1 = "Giá trị của m thuộc ( -oo; $x1  ] U [ $x2; +oo)";
        } else
          result1 = "Mọi giá trị m thuộc R điều thỏa yêu cầu bài toán";
        if (_A > 0) if (delta > 0) {
          x1 = (-_B - sqrt(delta)) / (2 * _A);
          x2 = (-_B + sqrt(delta)) / (2 * _A);
          result1 = "Giá trị của m thuộc [ $x1  ; $x2 ]";
        } else if (delta == 0)
          result1 = "Giá trị của m = ${(-_B / (2 * _A))}";
        else
          result1 = "Không có giá trị của m thỏa yêu cầu bài toán";

        if ((_A == 0) && (_B == 0)) if (_C == 0)
          result1 = "Mọi giá trị m thuộc R điều thỏa yêu cầu bài toán";
        else if (_C < 0)
          result1 = "Mọi giá trị m thuộc R điều thỏa yêu cầu bài toán";
        else
          result1 = "Không có giá trị của m thỏa yêu cầu bài toán";

        if ((_A == 0) && (_B > 0)) {
          result1 = "Giá trị của m thuộc ( -oo ; ${(-_C / _B)} ]";
        }

        if ((_A == 0) && (_B < 0)) {
          print("yo");
          result1 = "Giá trị của m thuộc [ ${(-_C / _B)} ; +oo)";
        }
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
          title: Text("Tìm m để hàm số bậc ba nghịch biến trên R"),
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
                        ListTile(
                          leading: Text("G"),
                          title: TextFormField(
                            keyboardType: TextInputType.number,
                            controller: gTextEditingController,
                            decoration: textFieldInputDecoration("Điền G"),
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
                          leading: Text("H"),
                          title: TextFormField(
                            keyboardType: TextInputType.number,
                            controller: hTextEditingController,
                            decoration: textFieldInputDecoration("Điền H"),
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
                          fTextEditingController.text = "";
                          eTextEditingController.text = "";
                        },
                        child: Text("Delete"),
                      ),
                    ],
                  ),
                  // type Function
                  Text("Dang toán:",
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  Text(
                      "Tìm m để hàm số y = (am+b)x^3 +(cm+d)x^2+(em+f)x+gm+h nghịch biến trên R"),
                  typeFunction != -1
                      ? Column(
                          children: [
                            // Text("Delta' $answerDelta_phay"),
                            Text(
                              "Đề bài",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text(
                                "Tìm m để hàm số bậc 3: y = ( ${aTextEditingController.text}m+${bTextEditingController.text})x^3 +(${cTextEditingController.text} m+${dTextEditingController.text})x^2+(${eTextEditingController.text}m+${fTextEditingController.text})x+${gTextEditingController.text}m+${hTextEditingController.text} nghịch biến trên R"),

                            Text(
                              "Đáp án: ",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text("$result1",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            Text("$result2",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            Text("$result3",
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
