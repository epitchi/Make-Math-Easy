import 'package:flutter/material.dart';
import 'package:solveMathApp/screen/GiaiPTBac2.dart';
import 'package:solveMathApp/screen/XetTinhDonDieuCuaHamSoPage.dart';

class MenuPage extends StatefulWidget {
  @override
  _MenuPageState createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Mode")),
        body: Container(
            child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: <Widget>[
              ListTile(
                title: Text("Những dạng toán có thể giải:"),
              ),
              RaisedButton(
                child: Text("Giải Phương Trình Bậc 2"),
                color: Colors.lightBlue,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => GiaiPTBac2()),
                  );
                },
              ),
              RaisedButton(
                child: Text("Xét tính đơn điệu hàm số"),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => XTDDCHSPage()),
                  );
                },
              ),
              RaisedButton(
                child: Text("Mode 3"),
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (_) => AlertDialog(
                      title: Text("Tính năng đang được phát triển"),
                      content: Text("Đội ngũ phát triển đang chết đói"),
                      actions: [
                        FlatButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: Text("Donate")),
                      ],
                      elevation: 24.0,
                    ),
                    barrierDismissible: false,
                  );
                },
              ),
            ],
          ),
        )));
  }
}
