import 'dart:math';
import 'package:flutter/material.dart';
import 'package:solveMathApp/widgets/widget.dart';

class TSHTPCO3DCTDTSPage extends StatefulWidget {
  @override
  _TSHTPCO3DCTDTSPageState createState() => _TSHTPCO3DCTDTSPageState();
}

List listAnswer = new List<String>();

class _TSHTPCO3DCTDTSPageState extends State<TSHTPCO3DCTDTSPage> {
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
    double A, B, C, D;
    double dt, k, x1, x2, x3, x, fk;
    double PI = 3.14159265359;
    A = pow(c, 3);
    B = 3 * c * c * d;
    C = 3 * c * d * d + 8 * a;
    D = pow(d, 3) + 8 * b;
    if (A == 0) {
      if (a == 0) if ((b * d < 0) && (d * d * d + 8 * b == 0))
        result1 = "Với mọi giá trị m ";
      if (a != 0) {
        double m = (pow(d, 3) + 8 * b) / (8 * a);
        if ((a * m + b) * (c * m + d) < 0)
          result1 = "Giá trị của m = $m";
        else
          result1 = " Không có giá trị m thỏa ";
      }
    } else {
      dt = pow(B, 2) - 3 * A * C; //delta=b*b-3*a*c;
      double fdt = dt;
      if (dt < 0) fdt = (-1) * dt;
      k = (9 * A * B * C - 2 * pow(B, 3) - 27 * pow(A, 2) * D) /
          (2 * sqrt(pow(fdt, 3)));
      if (dt > 0) {
        if ((k <= 1) && (k >= -1)) {
          x1 = (2 * sqrt(dt) * cos(acos(k) / 3) - B) / (3 * a);
          x2 = (2 * sqrt(dt) * cos(acos(k) / 3 - (2 * PI / 3)) - B) / (3 * A);
          x3 = (2 * sqrt(dt) * cos(acos(k) / 3 + (2 * PI / 3)) - B) / (3 * A);
          if ((a * x1 + b) * (c * x1 + d) < 0) result1 = "Giá trị của m = $x1";
          if ((a * x2 + b) * (c * x2 + d) < 0) result2 = "Giá trị của m = $x2";
          if ((a * x3 + b) * (c * x3 + d) < 0) result3 = "Giá trị của m = $x3";
          if (((a * x1 + b) * (c * x1 + d) >= 0) &&
              ((a * x2 + b) * (c * x2 + d) >= 0) &&
              ((a * x3 + b) * (c * x3 + d) >= 0))
            result1 = " Không có giá trị m thỏa ";
        }
        if ((k > 1) && (k < -1)) {
          if (k < 0)
            fk = (-1) * k;
          else
            fk = k;
          x = ((sqrt(dt) * fk) / (3 * A * k)) *
                  (pow((fk + sqrt(pow(k, 2) - 1)), 1.0 / 3) +
                      pow((fk - sqrt(pow(k, 2) - 1)), 1.0 / 3)) -
              (b / (3 * a));
          if ((a * x + b) * (c * x + d) < 0)
            result1 = " Giá trị của m là $x";
          else
            result1 = " Không có giá trị m thỏa ";
        }
      } else if (dt == 0) {
        x = (-B - pow(-(pow(B, 3) - 27 * A * A * D), 1.0 / 3)) /
            (3 *
                A); //do ham pow khong dung doi so am nen ta phai doi dau.Ct goc:x=(-b+pow(pow(b,3)-27*a*a*d),1.0/3))/(3*a)
        if ((a * x + b) * (c * x + d) < 0)
          result1 = " Giá trị của m là $x";
        else
          result1 = " Không có giá trị m thỏa ";
      } else {
        x = (sqrt(fdt) / (3 * A)) *
                (pow((k + sqrt(k * k + 1)), 1.0 / 3) -
                    pow(-(k - sqrt(k * k + 1)), 1.0 / 3)) -
            (B / (3 * A));
        if ((a * x + b) * (c * x + d) < 0)
          result1 = " Giá trị của m là $x";
        else
          result1 = " Không có giá trị m thỏa ";
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
          title: Text(
              "Tìm m hàm số trùng phương có 3 điểm cực trị tạo thành tam giác có diện tích S"),
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
                        child: Text("Solve"),
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
                      "Tìm m để hàm số y = (am+b)x^4 + (cm+d)x^2 + em+f có ba điểm cực trị tạo thành tam giác có diện tích là S"),
                  typeFunction != -1
                      ? Column(
                          children: [
                            Text("Đề bài",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            Text(
                                "Tìm m để hàm số y = (${aTextEditingController.text}m+${bTextEditingController.text})x^4 + (${cTextEditingController.text}m+${dTextEditingController.text})x^2 + ${eTextEditingController.text}m+${fTextEditingController.text} có ba điểm cực trị tạo thành tam giác có diện tích là S"),
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
