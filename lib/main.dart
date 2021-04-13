import 'package:csc_preorder_beta/models/main_serveice.dart';
import 'package:csc_preorder_beta/pages/loginpage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:csc_preorder_beta/pages/homepage.dart';

void main() {
  runApp(MyApp());
}

// ignore: must_be_immutable
class MyApp extends StatelessWidget {
  LoginStatus loginStatus = LoginStatus();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CSC PreOrder',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: loginStatus.loginStatus() ? HomePage() : LoginPage(),
    );
  }
}
