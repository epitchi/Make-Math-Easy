import 'package:flutter/material.dart';
import 'package:solveMathApp/screen/HamCucTriBac3.dart';
import 'package:solveMathApp/screen/GiaiPTBac2.dart';
import 'package:solveMathApp/screen/HamCucTriBac4.dart';
import 'package:solveMathApp/screen/HamPhanThucBac2TrenBac1.dart';
import 'package:solveMathApp/screen/HamTrungPhuongPage.dart';
import 'package:solveMathApp/screen/TestPage.dart';
import 'package:solveMathApp/screen/XetTinhDonDieuCuaHamSoBac3Page.dart';

class MenuPage extends StatefulWidget {
  @override
  _MenuPageState createState() => _MenuPageState();
}

void _showdialog(context) {
  showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Tính năng đang được phát triển"),
          content: new Text("Sẽ có mặt tại bản 1.1"),
          actions: <Widget>[
            // usually buttons at the bottom of the dialog
            new FlatButton(
              child: new Text("Ok!"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      });
}

class _MenuPageState extends State<MenuPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Các dạng toán")),
        body: Container(
            child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: <Widget>[
              ListTile(
                  title: Text("Bài toán không có tham số"),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => BTKCTS()),
                    );
                  }),
              ListTile(
                  title: Text("Bài toán có chứa tham số"),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => BTCCTS()),
                    );
                  }),
            ],
          ),
        )));
  }
}

class BTCCTS extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Bài toán có chứa tham số")),
        body: Container(
            child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(children: <Widget>[
                  ListTile(
                    title: Text("Tính đơn điệu"),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => TSTDD()),
                      );
                    },
                  ),
                  ListTile(
                    title: Text("Hàm cực trị"),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => TSHCT()),
                      );
                    },
                  ),
                  ListTile(
                    title: Text("Tìm GTLN, GTNN"),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => TSFGTLNGTNN()),
                      );
                    },
                  ),
                  ListTile(
                    title: Text("Tiệm cận"),
                    onTap: () {
                      _showdialog(context);
                    },
                  )
                ]))));
  }
}

class TSFGTLNGTNN extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Tìm GTLN, GTNN")),
        body: Container(
            child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(children: <Widget>[
                  ListTile(
                    title: Text("Hàm số bậc 3"),
                    onTap: () {
                      _showdialog(context);
                    },
                  ),
                  ListTile(
                    title: Text("Hàm trùng phương"),
                    onTap: () {
                      _showdialog(context);
                    },
                  ),
                  ListTile(
                    title: Text("Hàm phân thức"),
                    onTap: () {
                      _showdialog(context);
                    },
                  )
                ]))));
  }
}

class TSHCT extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Hàm cực trị")),
        body: Container(
            child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(children: <Widget>[
                  ListTile(
                    title: Text("Hàm số bậc 3"),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => TSHCTHSB3()),
                      );
                    },
                  ),
                  ListTile(
                    title: Text("Hàm trùng phương"),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => TSHCTHTP()),
                      );
                    },
                  )
                ]))));
  }
}

class TSHCTHTP extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Hàm trùng phương")),
        body: Container(
            child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(children: <Widget>[
                  ListTile(
                    title: Text("Tìm m để hàm số có 1 điểm cực trị"),
                    onTap: () {
                      _showdialog(context);
                    },
                  ),
                  ListTile(
                    title: Text("Tìm m để hàm số có 3 điểm cực trị"),
                    onTap: () {
                      _showdialog(context);
                    },
                  ),
                  ListTile(
                    title: Text(
                        "Tìm m để hàm số có 3 cực trị tạo thành tam giác vuông"),
                    onTap: () {
                      _showdialog(context);
                    },
                  ),
                  ListTile(
                    title: Text(
                        "Tìm m để hàm số có 3 cực trị tạo thành tam giác đều"),
                    onTap: () {
                      _showdialog(context);
                    },
                  ),
                  ListTile(
                    title: Text(
                        "Tìm m để hàm số có 3 cực trị tạo thành tam giác có diện tích là S"),
                    onTap: () {
                      _showdialog(context);
                    },
                  ),
                ]))));
  }
}

class TSHCTHSB3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Hàm số bậc 3")),
        body: Container(
            child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(children: <Widget>[
                  ListTile(
                    title: Text("Tìm m để hàm số có hai điểm cực trị"),
                    onTap: () {
                      _showdialog(context);
                    },
                  ),
                  ListTile(
                    title: Text("Tìm m để hàm số không có điểm cực trị"),
                    onTap: () {
                      _showdialog(context);
                    },
                  ),
                  ListTile(
                    title:
                        Text("Phương trình đường thẳng qua hai điểm cực trị"),
                    onTap: () {
                      _showdialog(context);
                    },
                  ),
                ]))));
  }
}

class TSTDD extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Tính đơn điệu")),
        body: Container(
            child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(children: <Widget>[
                  ListTile(
                    title: Text("Hàm số bậc 3"),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => TSHSB3()),
                      );
                    },
                  ),
                  ListTile(
                    title: Text("Hàm phân thức"),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => TSHPT()),
                      );
                    },
                  )
                ]))));
  }
}

class TSHPT extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Hàm phân thức")),
        body: Container(
            child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(children: <Widget>[
                  ListTile(
                      title: Text(
                          'Tìm m để hàm số đồng biến trên từng khoảng xác định'),
                      onTap: () {
                        _showdialog(context);
                      }),
                  ListTile(
                      title: Text(
                          'Tìm m để hàm số nghịch biến trên từng khoảng xác định'),
                      onTap: () {
                        _showdialog(context);
                      }),
                  ListTile(
                      title:
                          Text('Tìm m để hàm số đồng biến trên khoảng (a,b)'),
                      onTap: () {
                        _showdialog(context);
                      }),
                  ListTile(
                      title:
                          Text('Tìm m để hàm số nghịch biến trên khoảng (a,b)'),
                      onTap: () {
                        _showdialog(context);
                      }),
                ]))));
  }
}

class TSHSB3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Hàm số bậc 3")),
        body: Container(
            child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(children: <Widget>[
                  ListTile(
                      title: Text('Tìm m để hàm số đồng biến trên R'),
                      onTap: () {
                        _showdialog(context);
                      }),
                  ListTile(
                      title: Text('Tìm m để hàm số nghịch biến trên R'),
                      onTap: () {
                        _showdialog(context);
                      }),
                  ListTile(
                      title:
                          Text('Tìm m để hàm số đồng biến trên khoảng (a,b)'),
                      onTap: () {
                        _showdialog(context);
                      }),
                  ListTile(
                      title:
                          Text('Tìm m để hàm số nghịch biến trên khoảng (a,b)'),
                      onTap: () {
                        _showdialog(context);
                      }),
                ]))));
  }
}

class BTKCTS extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Bài toán không có tham số")),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: <Widget>[
              ListTile(
                  title: Text('Xét tính đơn điệu'),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => XTDD()));
                  }),
              ListTile(
                  title: Text('Tìm cực trị'),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => FGTLNGTNN()));
                  }),
              ListTile(
                  title: Text('Tìm GTLN, GTNN'),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => FGTLNGTNN()));
                  }),
              ListTile(
                  title: Text('Tìm tiệm cận'),
                  onTap: () {
                    _showdialog(context);
                  }),
            ],
          ),
        ),
      ),
    );
  }
}

class XTDD extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Xét tính đơn điệu")),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: <Widget>[
              ListTile(
                  title: Text('Hàm bậc 3'),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => XTDDCHS3Page()),
                    );
                  }),
              ListTile(
                  title: Text('Hàm trùng phương'),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => HamTrungPhuongPage()),
                    );
                  }),
              ListTile(
                  title: Text('Hàm phân thức'),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => HamPhanThucBac2TrenBac1()));
                  }),
            ],
          ),
        ),
      ),
    );
  }
}

class TCT extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Tìm cực trị")),
        body: Container(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: <Widget>[
                ListTile(
                    title: Text("Hàm số bậc ba"),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => HamCucTriBac3()));
                    }),
                ListTile(
                    title: Text("Hàm trùng phương"),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => HamCucTriBac4()));
                    }),
                ListTile(
                    title: Text("Hàm phân thức"),
                    onTap: () {
                      _showdialog(context);
                    }),
              ],
            ),
          ),
        ));
  }
}

class FGTLNGTNN extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Tìm GTLN, GTNN")),
        body: Container(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: <Widget>[
                ListTile(
                    title: Text("Hàm số bậc ba"),
                    onTap: () {
                      _showdialog(context);
                    }),
                ListTile(
                    title: Text("Hàm trùng phương"),
                    onTap: () {
                      _showdialog(context);
                    }),
                ListTile(
                    title: Text("Hàm phân thức"),
                    onTap: () {
                      _showdialog(context);
                    }),
              ],
            ),
          ),
        ));
  }
}
