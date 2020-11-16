import 'package:flutter/material.dart';
import 'package:solveMathApp/screen/HamCucTriBac3.dart';
import 'package:solveMathApp/screen/HamCucTriBac4.dart';
import 'package:solveMathApp/screen/HamPhanThucBac2TrenBac1.dart';
import 'package:solveMathApp/screen/HamTrungPhuongPage.dart';
import 'package:solveMathApp/screen/NoTSXTDDCHS3Page.dart';
import 'package:solveMathApp/screen/TSHSB3_FoundMDBRPage.dart';

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
                    setState(() {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => BTKCTS()),
                      );
                    });
                  }),
              ListTile(
                  title: Text("Bài toán có chứa tham số"),
                  onTap: () {
                    setState(() {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => BTCCTS()),
                      );
                    });
                  }),
            ],
          ),
        )));
  }
}

class BTCCTS extends StatefulWidget {
  @override
  _BTCCTSState createState() => _BTCCTSState();
}

class _BTCCTSState extends State<BTCCTS> {
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
                      setState(() {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => TSTDD()),
                        );
                      });
                    },
                  ),
                  ListTile(
                    title: Text("Hàm cực trị"),
                    onTap: () {
                      setState(() {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => TSHCT()),
                        );
                      });
                    },
                  ),
                  ListTile(
                    title: Text("Tìm GTLN, GTNN"),
                    onTap: () {
                      setState(() {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => TSFGTLNGTNN()),
                        );
                      });
                    },
                  ),
                  ListTile(
                    title: Text("Tiệm cận"),
                    onTap: () {
                      setState(() {});
                      _showdialog(context);
                    },
                  )
                ]))));
  }
}

class TSFGTLNGTNN extends StatefulWidget {
  @override
  _TSFGTLNGTNNState createState() => _TSFGTLNGTNNState();
}

class _TSFGTLNGTNNState extends State<TSFGTLNGTNN> {
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
                      setState(() {});
                      _showdialog(context);
                    },
                  ),
                  ListTile(
                    title: Text("Hàm trùng phương"),
                    onTap: () {
                      setState(() {});
                      _showdialog(context);
                    },
                  ),
                  ListTile(
                    title: Text("Hàm phân thức"),
                    onTap: () {
                      setState(() {});

                      _showdialog(context);
                    },
                  )
                ]))));
  }
}

class TSHCT extends StatefulWidget {
  @override
  _TSHCTState createState() => _TSHCTState();
}

class _TSHCTState extends State<TSHCT> {
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
                      setState(() {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => TSHCTHSB3()),
                        );
                      });
                    },
                  ),
                  ListTile(
                    title: Text("Hàm trùng phương"),
                    onTap: () {
                      setState(() {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => TSHCTHTP()),
                        );
                      });
                    },
                  )
                ]))));
  }
}

class TSHCTHTP extends StatefulWidget {
  @override
  _TSHCTHTPState createState() => _TSHCTHTPState();
}

class _TSHCTHTPState extends State<TSHCTHTP> {
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
                      setState(() {});
                      _showdialog(context);
                    },
                  ),
                  ListTile(
                    title: Text("Tìm m để hàm số có 3 điểm cực trị"),
                    onTap: () {
                      setState(() {});

                      _showdialog(context);
                    },
                  ),
                  ListTile(
                    title: Text(
                        "Tìm m để hàm số có 3 cực trị tạo thành tam giác vuông"),
                    onTap: () {
                      setState(() {});

                      _showdialog(context);
                    },
                  ),
                  ListTile(
                    title: Text(
                        "Tìm m để hàm số có 3 cực trị tạo thành tam giác đều"),
                    onTap: () {
                      setState(() {});

                      _showdialog(context);
                    },
                  ),
                  ListTile(
                    title: Text(
                        "Tìm m để hàm số có 3 cực trị tạo thành tam giác có diện tích là S"),
                    onTap: () {
                      setState(() {});

                      _showdialog(context);
                    },
                  ),
                ]))));
  }
}

class TSHCTHSB3 extends StatefulWidget {
  @override
  _TSHCTHSB3State createState() => _TSHCTHSB3State();
}

class _TSHCTHSB3State extends State<TSHCTHSB3> {
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
                      setState(() {});

                      _showdialog(context);
                    },
                  ),
                  ListTile(
                    title: Text("Tìm m để hàm số không có điểm cực trị"),
                    onTap: () {
                      setState(() {});

                      _showdialog(context);
                    },
                  ),
                  ListTile(
                    title:
                        Text("Phương trình đường thẳng qua hai điểm cực trị"),
                    onTap: () {
                      setState(() {});

                      _showdialog(context);
                    },
                  ),
                ]))));
  }
}

class TSTDD extends StatefulWidget {
  @override
  _TSTDDState createState() => _TSTDDState();
}

class _TSTDDState extends State<TSTDD> {
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
                      setState(() {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => TSHSB3()),
                        );
                      });
                    },
                  ),
                  ListTile(
                    title: Text("Hàm phân thức"),
                    onTap: () {
                      setState(() {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => TSHPT()),
                        );
                      });
                    },
                  )
                ]))));
  }
}

class TSHPT extends StatefulWidget {
  @override
  _TSHPTState createState() => _TSHPTState();
}

class _TSHPTState extends State<TSHPT> {
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
                        setState(() {});
                        _showdialog(context);
                      }),
                  ListTile(
                      title: Text(
                          'Tìm m để hàm số nghịch biến trên từng khoảng xác định'),
                      onTap: () {
                        setState(() {});

                        _showdialog(context);
                      }),
                  ListTile(
                      title:
                          Text('Tìm m để hàm số đồng biến trên khoảng (a,b)'),
                      onTap: () {
                        setState(() {});

                        _showdialog(context);
                      }),
                  ListTile(
                      title:
                          Text('Tìm m để hàm số nghịch biến trên khoảng (a,b)'),
                      onTap: () {
                        setState(() {});

                        _showdialog(context);
                      }),
                ]))));
  }
}

class TSHSB3 extends StatefulWidget {
  @override
  _TSHSB3State createState() => _TSHSB3State();
}

class _TSHSB3State extends State<TSHSB3> {
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
                        setState(() {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => TSHSB3_FoundMDBRPage()),
                          );
                        });
                      }),
                  ListTile(
                      title: Text('Tìm m để hàm số nghịch biến trên R'),
                      onTap: () {
                        setState(() {});

                        _showdialog(context);
                      }),
                  ListTile(
                      title:
                          Text('Tìm m để hàm số đồng biến trên khoảng (a,b)'),
                      onTap: () {
                        setState(() {});

                        _showdialog(context);
                      }),
                  ListTile(
                      title:
                          Text('Tìm m để hàm số nghịch biến trên khoảng (a,b)'),
                      onTap: () {
                        setState(() {});

                        _showdialog(context);
                      }),
                ]))));
  }
}

class BTKCTS extends StatefulWidget {
  @override
  _BTKCTSState createState() => _BTKCTSState();
}

class _BTKCTSState extends State<BTKCTS> {
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
                    setState(() {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => NoTSXTDD()));
                    });
                  }),
              ListTile(
                  title: Text('Tìm cực trị'),
                  onTap: () {
                    setState(() {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => NoTSTCT()));
                    });
                  }),
              ListTile(
                  title: Text('Tìm GTLN, GTNN'),
                  onTap: () {
                    setState(() {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => NoTSFGTLNGTNN()));
                    });
                  }),
              ListTile(
                  title: Text('Tìm tiệm cận'),
                  onTap: () {
                    setState(() {});
                    _showdialog(context);
                  }),
            ],
          ),
        ),
      ),
    );
  }
}

class NoTSXTDD extends StatefulWidget {
  @override
  _NoTSXTDDState createState() => _NoTSXTDDState();
}

class _NoTSXTDDState extends State<NoTSXTDD> {
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
                    setState(() {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => NoTSXTDDCHS3Page()),
                      );
                    });
                  }),
              ListTile(
                  title: Text('Hàm trùng phương'),
                  onTap: () {
                    setState(() {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => NoTSXTDDHTPPage()),
                      );
                    });
                  }),
              ListTile(
                  title: Text('Hàm phân thức'),
                  onTap: () {
                    setState(() {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => NoTSXTDDHPTPage()));
                    });
                  }),
            ],
          ),
        ),
      ),
    );
  }
}

class NoTSTCT extends StatefulWidget {
  @override
  _NoTSTCTState createState() => _NoTSTCTState();
}

class _NoTSTCTState extends State<NoTSTCT> {
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
                      setState(() {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => NoTSTCTHCTB3Page()));
                      });
                    }),
                ListTile(
                    title: Text("Hàm trùng phương"),
                    onTap: () {
                      setState(() {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => NoTSTCTHTPPage()));
                      });
                    }),
                ListTile(
                    title: Text("Hàm phân thức"),
                    onTap: () {
                      setState(() {});
                      _showdialog(context);
                    }),
              ],
            ),
          ),
        ));
  }
}

class NoTSFGTLNGTNN extends StatefulWidget {
  @override
  _NoTSFGTLNGTNNState createState() => _NoTSFGTLNGTNNState();
}

class _NoTSFGTLNGTNNState extends State<NoTSFGTLNGTNN> {
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
                      setState(() {});

                      _showdialog(context);
                    }),
                ListTile(
                    title: Text("Hàm trùng phương"),
                    onTap: () {
                      setState(() {});

                      _showdialog(context);
                    }),
                ListTile(
                    title: Text("Hàm phân thức"),
                    onTap: () {
                      setState(() {});

                      _showdialog(context);
                    }),
              ],
            ),
          ),
        ));
  }
}
