import 'package:flutter/material.dart';
import 'login_page.dart';
import 'language.dart';

class MenuPage extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ตั้งค่าบัญชี'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(8),
        children: <Widget>[
          Container(
            child: Row(
              children: [
                Text(
                  "บัญชีของฉัน",
                  style: TextStyle(fontSize: 18.0),
                ),
              ],
            ),
          ),
          Container(
              height: 60,
              color: Colors.orange[300],
              child: FlatButton(
                onPressed: () {},
                child: Text(
                  "หน้าโปรไฟล์",style: TextStyle(fontSize: 18.0),
                ),
              )),
          Container(
              height: 60,
              color: Colors.orange[300],
              child: FlatButton(
                onPressed: () {},
                child: Text(
                  "ที่อยู่ของฉัน",style: TextStyle(fontSize: 18.0),
                ),
              )),
          Container(
              height: 60,
              color: Colors.orange[300],
              child: FlatButton(
                onPressed: () {
                

                },
                child: Text(
                  "ข้อมูลบัญชีธนาคาร/บัตร",style: TextStyle(fontSize: 18.0),
                ),
              )),
          Container(
            child: Row(
              children: [
                Text(
                  "การตั้งค่า",
                  style: TextStyle(fontSize: 18.0),
                ),
              ],
            ),
          ),
          Container(
              height: 60,
              color: Colors.orange[300],
              child: FlatButton(
                onPressed: () {},
                child: Text(
                  "ตั้งค่าการแจ้งเตือน",style: TextStyle(fontSize: 18.0),
                ),
              )),
          Container(
              height: 60,
              color: Colors.orange[300],
              child: FlatButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Language()),
                  );
                },
                child: Text(
                  "ภาษา/Language",style: TextStyle(fontSize: 18.0),
                ),
              )),
          Padding(
            padding: const EdgeInsets.fromLTRB(0,8,0,0),
            child: Container(
              height: 60,
               color: Colors.orange[300],
              child: OutlineButton(
                child: Text("ออกจากระบบ",style: TextStyle(fontSize: 18.0),),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginPage()),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
