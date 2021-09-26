import 'package:flutter/material.dart';
import 'dart:html' as html;

class IntroducePage extends StatefulWidget {
  @override
  _IntroducePageState createState() => _IntroducePageState();
}

class _IntroducePageState extends State<IntroducePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Giới thiệu"),
        shadowColor: Colors.greenAccent,
      ),
      body: Container(
          child: Padding(
              padding: EdgeInsets.all(5),
              child: Column(
                children: [
                  ListTile(
                      title: Text(
                    "Về dự án",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold),
                  )),
                  ListTile(
                    title: Text("Với web này bạn có thể giải nhanh các dạng toán không thể bấm bằng máy tính tay, cụ thể là các dạng toán lớp 12... "),
                  ),
                  ListTile(
                    title: Text("Về đội ngũ phát triển",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 24.0,
                            fontWeight: FontWeight.bold)),
                  ),
                  ListTile(
                    leading: Image.asset(
                      "assets/images/img_mailinh.png",
                      height: 80,
                      width: 80,
                    ),
                    subtitle: Text("Học sinh - Nghiên cứu khảo sát dự án"),
                    title: Text("Trần Mai Linh",
                        style: TextStyle(color: Colors.black, fontSize: 20.0)),
                    onTap: () {
                      html.window.open(
                          "https://www.facebook.com/profile.php?id=100035813623344",
                          "Tran Mai Linh");
                    },
                  ),
                  ListTile(
                    leading: Image.asset(
                      "assets/images/img_thjen.jpg",
                      height: 80,
                      width: 80,
                    ),
                    subtitle: Text("Học sinh - Lập trình viên"),
                    title: Text("Lê Văn Thiện",
                        style: TextStyle(color: Colors.black, fontSize: 20.0)),
                    onTap: () {
                      html.window.open(
                          "https://www.facebook.com/epitchi",
                          "Lê Văn Thiện");
                    },
                  ),

                  ListTile(
                    leading: Image.asset(
                      "assets/images/img_thayQuyen.png",
                      height: 80,
                      width: 80,
                    ),
                    subtitle: Text("Giáo viên hướng dẫn"),
                    title: Text("Nguyễn Mạnh Quyền",
                        style: TextStyle(color: Colors.black, fontSize: 20.0)),
                    onTap: () {
                      html.window.open(
                          "https://www.facebook.com/profile.php?id=100072904244121",
                          "Nguyen Manh Quyen");
                    },
                  ),
                  ListTile(
                      title: Text(
                    "Công nghệ sử dụng",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold),
                  )),
                  ListTile(
                      leading: Text("Lang:"),
                      title: Text(
                        "Dart",
                      )),
                  ListTile(
                    leading: Text("Framework:"),
                    title: Text(
                      "Flutter",
                    ),
                  ),
                  ListTile(
                    leading: Text("Database/Hosting:"),
                    title: Text("Firebase"),
                  ),
                  ListTile(
                      title: Text(
                    "Thông tin về dự án",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold),
                  )),
                  ListTile(
                    leading: Text("Phiên bản:"),
                    title: Text(
                      "2.0",
                    ),
                  ),
                ],
              ))),
    );
  }
}
