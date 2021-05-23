import 'package:flutter/material.dart';
import 'package:solveMathApp/CalendarSpace/CalendarSpace.dart';
import 'package:solveMathApp/Dashboard/Dashboard.dart';
import 'package:solveMathApp/NavigationBar/NavigationBar.dart';
import 'package:solveMathApp/responsive_layout.dart';

void main() {
  runApp(MyWeb());
}

class MyWebApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
            "Hiện tại dự án đang trong quá trình \n xây dựng trên nền tảng điện thoại di động. \n Để lại email bên dưới để được gửi thông tin đến nhanh nhất về MME - Make Math Easy"),
      ),
    );
  }
}

class MyWeb extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Web giải toán 12 MME',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Đang trong quá trình phát triển'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: 
              // ResponsiveLayout.isMacbook(context) ? 
              Stack(
                children: [
                  NavigationBar(),
                  Dashboard(),
                  // CalenderSpace(),
                ],
              ) 
              // : ListView(
              //   children: [
              //     NavigationBar(),
              //     Dashboard(),
              //   ],
              // )
        ));
  }
}
