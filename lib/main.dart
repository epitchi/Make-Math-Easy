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
        title: Text("Ứng dụng giải toán - MME"),
      ),
      body: Container(
        child: Padding(
          padding: EdgeInsets.all(5),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MenuPage()),
                  );
                },
                child: Padding(
                    padding: EdgeInsets.all(5),
                    child: ListTile(
                      title: Text(
                        "Giải Toán",
                        style: TextStyle(
                            fontSize: 32,
                            backgroundColor: Colors.blue,
                            color: Colors.white),
                        textAlign: TextAlign.center,
                      ),
                      subtitle: Image.asset(
                        "assets/images/img_math_solve.png",
                        width: 200,
                        height: 200,
                      ),
                    )),
              ),

              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => IntroducePage()));
                },
                child: Padding(
                    padding: EdgeInsets.all(5),
                    child: ListTile(
                      title: Text(
                        "Giới Thiệu",
                        style: TextStyle(
                            fontSize: 32,
                            backgroundColor: Colors.blue,
                            color: Colors.white),
                        textAlign: TextAlign.center,
                      ),
                      subtitle: Image.asset(
                        "assets/images/img_info.png",
                        width: 200,
                        height: 200,
                      ),
                    )),
              ),
              // Image.asset(""),
              // ListTile(
              //   title: Text("Giới thiệu"),
            ],
          ),
        ),
      ),
    );
  }
}
