import 'package:flutter/material.dart';
import 'login_page.dart';
import 'language.dart';

class MenuPage extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('การจัดการ'),
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
                 "ชื่อผู้ใช้งาน",
               ),
           )),
           Container(
           height: 60,
           color: Colors.blue[300],
           child: FlatButton(
               onPressed: () {
                   Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Language()),
                  );
               },
               child: Text(
                 "ภาษา",
               ),
           )),
             Container(
           height: 60,
           color: Colors.blue[300],
           child: FlatButton(
               onPressed: () {
                     Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginPage()),
                  );
               },
               child: Text(
                 "ออกจากระบบ",
               ),
           )),
      ],
     ),
    );
  }
}
