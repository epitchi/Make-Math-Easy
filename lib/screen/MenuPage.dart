import 'package:flutter/material.dart';
import 'package:solveMathApp/screen/HamCucTriBac3.dart';
import 'package:solveMathApp/screen/GiaiPTBac2.dart';
import 'package:solveMathApp/screen/HamPhanThucBac2TrenBac1.dart';
import 'package:solveMathApp/screen/HamTrungPhuongPage.dart';
import 'package:solveMathApp/screen/XetTinhDonDieuCuaHamSoBac3Page.dart';

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
              SizedBox(height: 20),
              RaisedButton(
                child: Text("Xét tính đơn điệu hàm số bậc 3"),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => XTDDCHS3Page()),
                  );
                },
              ),
              SizedBox(height: 20),
              RaisedButton(
                child: Text("Hàm trùng phương"),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => HamTrungPhuongPage()),
                  );
                },
              ),
              SizedBox(
                height: 20,
              ),
              RaisedButton(
                child: Text("Hàm phân thức bậc 2 trên bậc 1"),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => HamPhanThucBac2TrenBac1()));
                },
              ),
               SizedBox(
                height: 20,
              ),
              RaisedButton(
                child: Text("Hàm cực trị bậc 3"),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => HamCucTriBac3()));
                },
              )
            ],
          ),
        )));
  }
}
