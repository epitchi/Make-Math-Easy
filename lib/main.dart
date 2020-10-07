import 'package:flutter/material.dart';

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
          title: Text("Mai Linh nqu"),
        ),
        body: Container(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: <Widget>[
                TextFormField(
                  decoration: InputDecoration(
                    hintText: "Điền x"
                  ),
                   onChanged: (value){
                    setState(() {
                      //num1 == num parse .
                    });
                  },
                ),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: "Điền y"
                  ),
                  onChanged: (value){
                    setState(() {
                      //num1 == num parse .
                    });
                  },
                ),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: "Điền z"
                  ),
                   onChanged: (value){
                    setState(() {
                      //num1 == num parse .
                    });
                  },
                ),
              ],
            ),
          ),
        ));
  }
}
