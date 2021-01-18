import 'package:flutter/material.dart';
import 'record.dart';

class Search extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('การค้นหา'),
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
         height: 50,
            padding: EdgeInsets.fromLTRB(8, 0, 8, 0),
            child: TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'ค้นหา',
              ),
            ),
            ),
            Container(
            height: 50,
            color: Colors.blue[300],
              child: ListTile(
            leading: Icon(Icons.access_time_outlined ),
            title: Text('ประวัติการค้นหา'),
            onTap: () {
               Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Record()),
                  ); 
            },
          ),
            ),
        ],
      ),
    );
  }
}
