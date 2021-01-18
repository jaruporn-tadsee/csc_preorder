import 'package:flutter/material.dart';

class Record extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ประวัติการค้นหา'),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Colors.blue[300], Colors.blue[300]]),
          ),
        ),
      ),
      body: ListView(
        children: <Widget>[
          Container(
              height: 60,
              color: Colors.blue[300],
              child: FlatButton(
                onPressed: () {},
                child: Text(
                  "ร้านยำแซ่บ",
                ),
              )),
          Container(
              height: 60,
              color: Colors.blue[300],
              child: FlatButton(
                onPressed: () {},
                child: Text(
                  "ร้านเตี๋ยว10 บาท",
                ),
              )),
          Container(
              height: 60,
              color: Colors.blue[300],
              child: FlatButton(
                onPressed: () {},
                child: Text(
                  "ร้านขนมไทยหน้ามอ",
                ),
              )),
          Container(
              height: 60,
              color: Colors.blue[300],
              child: FlatButton(
                onPressed: () {},
                child: Text(
                  "ร้านอาหารตามสั่ง",
                ),
              )),
        ],
      ),
    );
  }
}
