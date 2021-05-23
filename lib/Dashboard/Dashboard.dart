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
                            ProjectProgressCard(
                              color: Color(0xffFAAA1E),
                              projectName: 'Nền tảng hỗ trợ',
                              percentComplete: '50%',
                              progressIndicatorColor: Colors.amber[200],
                              icon: Icons.local_airport,
                              date: '30 Apr 2021',
                              member: '3',
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
