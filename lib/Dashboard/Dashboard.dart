import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:solveMathApp/Dashboard/src/ProjectProgressCard.dart';
import 'package:solveMathApp/Dashboard/src/ProjectSatisticsCards.dart';
import 'package:solveMathApp/Dashboard/src/SharedFilesItem.dart';
import 'package:solveMathApp/Dashboard/src/SubHeader.dart';
import 'package:solveMathApp/Dashboard/src/Tabs.dart';
import 'package:solveMathApp/screen/IntroducePage.dart';
import 'package:solveMathApp/screen/MenuPage.dart';
import 'package:solveMathApp/responsive_layout.dart';
import 'dart:html' as html;

import 'package:solveMathApp/screen/OnlineTechingPage.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: ResponsiveLayout.isMacbook(context) ? 100 : 0.0,
      child: Container(
        height: MediaQuery.of(context).size.height,
        width: ResponsiveLayout.isMacbook(context)
            ? MediaQuery.of(context).size.width * 0.63
            : MediaQuery.of(context).size.width,
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: ResponsiveLayout.isMacbook(context)
                ? CrossAxisAlignment.start
                : CrossAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(left: 30.0, top: 25.0, bottom: 10.0),
                child: Text('Web giải toán - MME',
                    style: GoogleFonts.quicksand(
                        fontWeight: FontWeight.bold, fontSize: 20.0)),
              ),
              // Tabs(),
              Container(
                  margin: EdgeInsets.only(top: 5.0),
                  // height: ResponsiveLayout.isMacbook(context) ?  200.0: MediaQuery.of(context).size.height *0.6,
                  width: ResponsiveLayout.isMacbook(context)
                      ? MediaQuery.of(context).size.width * 0.62
                      : MediaQuery.of(context).size.width,
                  child: ResponsiveLayout.isMacbook(context)
                      ? Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            InkWell(
                              onTap: () {
                                setState(() {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => MenuPage()),
                                  );
                                });
                              },
                              child: ProjectProgressCard(
                                  color: Color(0xffFF4C60),
                                  projectName: 'Giải Toán',
                                  percentComplete: '38%',
                                  progressIndicatorColor: Colors.redAccent,
                                  icon: Feather.plus,
                                  member: '3',
                                  date: '10 Nov 2020'),
                            ),
                            InkWell(
                              onTap: () {
                                setState(() {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              IntroducePage()));
                                });
                              },
                              child: ProjectProgressCard(
                                color: Color(0xff6C6CE5),
                                projectName: 'Giới thiệu',
                                percentComplete: '78%',
                                progressIndicatorColor: Colors.blue[200],
                                icon: Feather.info,
                                member: '3',
                                date: '11 Nov 2020',
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                setState(() {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              OnlineTeachingPage()));
                                });
                              },
                              child: ProjectProgressCard(
                                color: Color(0xffFAAA1E),
                                projectName: 'Học trực tuyến',
                                percentComplete: '50%',
                                progressIndicatorColor: Colors.amber[200],
                                icon: Icons.people,
                                date: '25 July 2021',
                                member: '15',
                              ),
                            ),
                          ],
                        )
                      : Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => MenuPage()),
                                );
                              },
                              child: ProjectProgressCard(
                                  color: Color(0xffFF4C60),
                                  projectName: 'Giải Toán',
                                  percentComplete: '38%',
                                  progressIndicatorColor: Colors.redAccent,
                                  icon: Feather.plus,
                                  member: '3',
                                  date: '10 Nov 2020'),
                            ),
                            SizedBox(height: 10.0),
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => IntroducePage()));
                              },
                              child: ProjectProgressCard(
                                color: Color(0xff6C6CE5),
                                projectName: 'Giới thiệu',
                                percentComplete: '78%',
                                progressIndicatorColor: Colors.blue[200],
                                icon: Feather.info,
                                member: '3',
                                date: '11 Nov 2020',
                              ),
                            ),
                            SizedBox(height: 10.0),
                            ProjectProgressCard(
                              color: Color(0xffFAAA1E),
                              projectName: 'Nền tảng hỗ trợ',
                              percentComplete: '50%',
                              progressIndicatorColor: Colors.amber[200],
                              icon: Icons.local_airport,
                              date: '30 Apr 2021',
                              member: '3',
                            ),
                            SizedBox(height: 10),
                            SubHeader(
                              title: "Các dạng đã tiến hành",
                            ),
                            SharedFilesItem(
                              color: Colors.blue,
                              sharedFileName: 'Bài toán có tham số',
                              members: '3',
                              et: '10 Nov 2020',
                              fileSize: '2.3 MB',
                            ),
                            SharedFilesItem(
                              color: Colors.amber,
                              sharedFileName: 'Bài toán không có tham số',
                              members: '3',
                              et: '10 Sep 2020',
                              fileSize: '4.2 MB',
                            ),
                            // SharedFilesItem(
                            //   color: Colors.red,
                            //   sharedFileName: 'Wireframes',
                            //   members: '14 members',
                            //   et: '08 Oct 2019',
                            //   fileSize: '1.6 MB',
                            // ),
                            // SubHeader(title: 'Thống kê dự án'),
                            // ProjectStatisticsCard(
                            //   count: '23',
                            //   name: 'Dạng toán hoàn thành',
                            //   descriptions:
                            //       '+ 10 dạng toán không chứa tham số',
                            //   progress: 0.75,
                            //   progressString: '75%',
                            //   color: Color(0xffFAAA1E),
                            // ),
                            SizedBox(height: 10),
                            // ProjectStatisticsCard(
                            //   color: Color(0xff6C6CE5),
                            //   count: '300',
                            //   name: 'Người sử dụng',
                            //   descriptions: '+ 200 new clients',
                            //   progress: 0.68,
                            //   progressString: '70%',
                            // ),
                          ],
                        )),
              ResponsiveLayout.isMacbook(context)
                  ? Container(
                      margin: EdgeInsets.only(top: 5.0),
                      width: ResponsiveLayout.isMacbook(context)
                          ? MediaQuery.of(context).size.width * 0.62
                          : MediaQuery.of(context).size.width,
                      child: Column(
                        children: [
                          SubHeader(
                            title: "Các dạng đã tiến hành",
                          ),
                          SharedFilesItem(
                            color: Colors.blue,
                            sharedFileName: 'Bài toán có tham số',
                            members: '3',
                            et: '10 Nov 2020',
                            fileSize: '2.3 MB',
                          ),
                          SharedFilesItem(
                            color: Colors.amber,
                            sharedFileName: 'Bài toán không có tham số',
                            members: '3',
                            et: '10 Sep 2020',
                            fileSize: '4.2 MB',
                          ),
                          // SharedFilesItem(
                          //   color: Colors.red,
                          //   sharedFileName: 'Wireframes',
                          //   members: '14 members',
                          //   et: '08 Oct 2019',
                          //   fileSize: '1.6 MB',
                          // ),
                          SubHeader(title: 'Thống kê dự án'),
                          ProjectStatisticsCards(),
                          Padding(
                            padding:
                                const EdgeInsets.only(top: 8.0, bottom: 8.0),
                            child: SubHeader(title: 'Bài toán được đóng góp'),
                          ),
                          Container(
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                ListTile(   
                                  leading: Image.asset(
                                    "assets/images/img_thayQuyen.png",
                                    height: 80,
                                    width: 80,
                                  ),
                                  subtitle: Text("8:10 AM - 24/8/2021"),
                                  title: Text("Nguyễn Mạnh Quyền",
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 20.0)),
                                  onTap: () {
                                    html.window.open(
                                        "https://www.facebook.com/quyen.nguyenmanh.790",
                                        "Nguyen Manh Quyen");
                                  },
                                ),
                                SizedBox(height: 10.0),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 50.0, right: 50.0),
                                  child: Text(
                                    '(THCS-THPT Nguyễn Khuyến Năm 2018-2019 Lần 01) Phương trình x^3 + -6mx + 5 = 3m^2 có 3 nghiệm phân biệt thành cấp số cộng khi \n A. m = 0    B. m = -1 và m = 1    C. m = 1    D. m thuộc tập rỗng \n Lời giải: \n Phương trình đã cho tương đương: x^3 - 6mx + 5 - 5m^2 = 0 \n Đặt y = f(x) = x^3 - 6mx + 5 - 5m^2 có f\'(x) = 3x^2 - 6m; f\'\' = 6x \n Phương trình đã cho có 3 nghiệm phân biệt <=> Hàm số y = f(x) cắt trục hoành tại 3 điểm phân biệt \n <=> f\'(x) = 0 có 2 nghiệm phân biệt x1, x2 thoả mãn f(x1).f(x2) < 0 \n 3 nghiệm đó thành lập cấp số cộng nên x2 - x1 = x3 - x2 \n Suy ra x2 là hoành độ của tâm đối xứng hay là nghiệm của f\'\'(x) = 0 \n Cho f\'\'(x) = 0 => 6x = 0 <=> x = 0 \n Với x = 0 ta có: 5 - 5m^2 = 0 <=> m = +- 1 \n Với m = 1 và m = -1 Ta được tập nghiệm: x = 0, x = +- sqrt(6).',
                                    textAlign: TextAlign.left,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 40, top: 20.0),
                                  child: Row(
                                    children: <Widget>[
                                      Icon(
                                        Icons.favorite,
                                        color: Colors.pink,
                                        size: 24.0,
                                      ),
                                      SizedBox(
                                        width: 10.0,
                                      ),
                                      Text(
                                        '12',
                                        style: TextStyle(fontSize: 20.0),
                                      ),
                                      SizedBox(
                                        width: 20.0,
                                      ),
                                      Icon(
                                        Icons.comment,
                                        color: Colors.black,
                                        size: 24.0,
                                      ),
                                      SizedBox(
                                        width: 10.0,
                                      ),
                                      Text(
                                        '3',
                                        style: TextStyle(fontSize: 20.0),
                                      )
                                    ],
                                  ),
                                ),
                                ListTile(
                                  leading: Image.asset(
                                    "assets/images/user.png",
                                    height: 32,
                                    width: 32,
                                  ),
                                  title: Text("Bùi Công Danh"),
                                  subtitle: Text("Hay quá thầy ơi."),
                                ),
                                ListTile(
                                  leading: Image.asset(
                                    "assets/images/user.png",
                                    height: 32,
                                    width: 32,
                                  ),
                                  title: Text("Phan Hữu Phước"),
                                  subtitle: Text("Bài giảng rất hữu ích."),
                                ),
                                ListTile(
                                  leading: Image.asset(
                                    "assets/images/user.png",
                                    height: 32,
                                    width: 32,
                                  ),
                                  title: Text("Phạm Song Gia Bảo"),
                                  subtitle: Text("Em cảm ơn thầy ạ."),
                                ),

                              ]))
                        ],
                      ))
                  : Container(),
            ],
          ),
        ),
      ),
    );
  }
}
