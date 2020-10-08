import 'package:flutter/material.dart';
import 'package:solveMathApp/screen/IntroducePage.dart';
import 'package:solveMathApp/screen/MenuPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Web giải toán 12',
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
      appBar: AppBar(
        title: Text("Ứng dụng giải toán"),
      ),
      body: Container(
        child: Padding(
          padding: EdgeInsets.all(5),
          child: Column(
            children: <Widget>[
              ListTile(
                title: Text("Giải toán"),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MenuPage()),
                  );
                },
              ),
              ListTile(
                title: Text("Giới thiệu"),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => IntroducePage()));
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
