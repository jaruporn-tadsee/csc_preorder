import 'package:flutter/material.dart';
import 'pre_order.dart';

class LoginPage extends StatefulWidget {
  static String tag = 'login-page';

  @override
  _LoginPageState createState() => new _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    final logo = Hero(
      tag: 'hero',
      child: CircleAvatar(
        backgroundColor: Colors.transparent,
        radius: 48.0,
        child: Image.network(
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS1Zg6qJVdzaJSR9QYuKTxthZXLkWV0nKQrBg&usqp=CAU'),
      ),
    );
    final email = TextFormField(
      keyboardType: TextInputType.emailAddress,
      autofocus: false,
      initialValue: '',
      decoration: InputDecoration(
          hintText: 'Email',
          contentPadding: EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 20.0),
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
    );

    final password = TextFormField(
      autofocus: false,
      initialValue: '',
      obscureText: true,
      decoration: InputDecoration(
          hintText: 'password',
          contentPadding: EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 20.0),
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
    );
    final loginButton = Padding(
        padding: EdgeInsets.symmetric(vertical: 16.0),
        child: RaisedButton(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
            onPressed: () {
              // Navigator.of(context).pushNamed(PreOrder.tag);
              Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => PreOrder()),
                  );
            },
            padding: EdgeInsets.all(12),
            color: Colors.lightBlue,
            child: Text('login', style: TextStyle(color: Colors.white))));

    final forgotLabel = FlatButton(
      child: Text('Forgot Password ?', style: TextStyle(color: Colors.black54)),
      onPressed: () {},
    );
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: ListView(
          padding: EdgeInsets.only(left: 24.0, right: 24.0),
          shrinkWrap: true,
          children: <Widget>[
            logo,
            SizedBox(height: 48.0,),
            email,
            SizedBox(height: 8.0,),
            password,
            SizedBox(height: 24.0,),
            loginButton,
            forgotLabel,
          ],
        ),
      ),
    );
  }
}