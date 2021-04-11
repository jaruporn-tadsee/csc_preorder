import 'package:csc_preorder_beta/pages/loginpage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:csc_preorder_beta/pages/homepage.dart';

void main() {
  runApp(MyApp());
}

final bool _isLogin = true;

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CSC PreOrder',
      theme:
          ThemeData(primarySwatch: Colors.orange, fontFamily: 'THSarabunNew'),
      home: _isLogin ? HomePage() : LoginPage(),
    );
  }
}
