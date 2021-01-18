import 'package:flutter/material.dart';
import 'login_page.dart';
import 'pre_order.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final routes = <String, WidgetBuilder>{
    LoginPage.tag: (context) => LoginPage(),
    PreOrder.tag: (context) => PreOrder()
  }; // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'App Login',
        debugShowCheckedModeBanner: false,
        theme:
            ThemeData(primarySwatch: Colors.lightBlue, fontFamily: 'Consolas'),
        home: LoginPage(),
        routes: routes);
  }
}
