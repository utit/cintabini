import 'package:flutter/material.dart';

void main() => runApp(Albani());

class Albani extends StatefulWidget {
  @override
  _AlbaniState createState() => _AlbaniState();
}

class _AlbaniState extends State<Albani> {
  int nilai = 0;

  void tambahNilai() {
    setState(() {
      if (nilai == 5) {
      } else {
        nilai = nilai + 1;
      }
    });
  }

  void resetNilai() {
    setState(() {
      nilai = 0;
    });
  }

  void kurangiNilai() {
    setState(() {
      nilai--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Touchscreen Tester"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              (nilai == 5)
                  ? Image.asset('assets/utit.jpg')
                  : Text(
                      nilai.toString(),
                      style: TextStyle(fontSize: 80.0),
                    ),
              (nilai < 5)
                  ? RaisedButton(
                      child: Text(
                        "Tambah Nilai",
                        style: TextStyle(fontSize: 20.0),
                      ),
                      onPressed: () {
                        tambahNilai();
                      },
                    )
                  : Text(
                      "I love yuo Istriku",
                      style: TextStyle(
                          fontSize: 30.0, fontWeight: FontWeight.bold),
                    ),
              (nilai < 5)
                  ? RaisedButton(
                      child: Text(
                        "Kurangi Nilai",
                        style: TextStyle(fontSize: 20.0),
                      ),
                      onPressed: () {
                        kurangiNilai();
                      },
                    )
                  : Text(""),
              RaisedButton(
                  child: Text(
                    "Segarkan Nilai",
                    style: TextStyle(fontSize: 20.0),
                  ),
                  onPressed: () {
                    resetNilai();
                  }),
              ButtonAlert()
            ],
          ),
        ),
      ),
    );
  }
}

class ButtonAlert extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: (_AlbaniState().nilai == 2)
          ? RaisedButton(
              child: Text(
                "Alert",
                style: TextStyle(fontSize: 20.0),
              ),
              onPressed: () {
                showAlertDialog(context);
              },
            )
          : Text(""),
    );
  }
}

showAlertDialog(BuildContext context) {
  AlertDialog alert = AlertDialog(
    title: Text("Alertku"),
    content: Text("Akhirnya Jadi"),
  );

  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}
