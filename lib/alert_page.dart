import 'package:flutter/material.dart';

class AlertPage extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('โพสต์'),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Colors.blue[300], Colors.blue[300]]),
          ),
        ),
      ),
     
    );
  }
}
