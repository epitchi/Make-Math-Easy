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

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 100.0,
      child: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width * 0.63,
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(left: 30.0, top: 25.0, bottom: 10.0),
              child: Text('Ứng dụng giải toán - MME',
                  style: GoogleFonts.quicksand(
                      fontWeight: FontWeight.bold, fontSize: 20.0)),
            ),
            // Tabs(),
            Container(
              margin: EdgeInsets.only(top: 5.0),
              height: 200.0,
              width: MediaQuery.of(context).size.width * 0.62,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => MenuPage()),
                      );
                    },
                    child: ProjectProgressCard(
                        color: Color(0xffFF4C60),
                        projectName: 'Giải Toán',
                        percentComplete: '38%',
                        progressIndicatorColor: Colors.redAccent,
                        icon: Feather.plus,
                        member: '3 members',
                        date: '10 Nov 2020'),
                  ),
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
                      member: '3 members',
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
                    member: '3 members',
                  ),
                ],
              ),
            ),
            SubHeader(
              title: "Các dạng đã tiến hành",
            ),
            SharedFilesItem(
              color: Colors.blue,
              sharedFileName: 'Bài toán có tham số',
              members: '3 member',
              et: '10 Nov 2020',
              fileSize: '2.3 MB',
            ),
            SharedFilesItem(
              color: Colors.amber,
              sharedFileName: 'Bài toán không có tham số',
              members: '3 member',
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
        ),
      ),
    );
  }
}
