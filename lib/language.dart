import 'package:flutter/material.dart';

class Language extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ภาษา/Language'),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Colors.orange[300], Colors.orange[300]]),
          ),
        ),
      ),
     body: ListView(
       children: <Widget>[
         Container(
           height: 60,
           color: Colors.orange[300],
           child: FlatButton(
               onPressed: () {},
               child: Text(
                 "ภาษาไทย",
               ),
           )),
           Container(
           height: 60,
           color: Colors.orange[300],
           child: FlatButton(
               onPressed: () {},
               child: Text(
                 "English",
               ),
           )),
            
      ],
     ),

    );
  }
}