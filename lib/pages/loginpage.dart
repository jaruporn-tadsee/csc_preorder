import 'package:flutter/material.dart';
import 'package:csc_preorder_beta/pages/homepage.dart';

class LoginPage extends StatelessWidget {
  final bool _isThaiLang = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Colors.white, Colors.orange])),
        padding: EdgeInsets.all(50),
        child: Center(
            child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20), color: Colors.white),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 50,
                backgroundImage: NetworkImage(
                    'https://kuse.csc.ku.ac.th/~alumni/images/KUSE_png-01.png'),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Text(
                  _isThaiLang ? 'ลงชื่อเข้าใช้งาน' : 'Please Login',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      labelText: _isThaiLang ? 'ชื่อผู้ใช้งาน' : 'Username',
                      hintText: _isThaiLang
                          ? 'โปรดกรอกชื่อผู้ใช้งาน'
                          : 'Enter your username'),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      labelText: _isThaiLang ? 'รหัสผ่าน' : 'Password',
                      hintText: _isThaiLang
                          ? 'โปรดกรอกรหัสผ่าน'
                          : 'Enter your secure password'),
                ),
              ),
              Container(
                padding: EdgeInsets.all(20),
                child: ElevatedButton(
                    onPressed: () => {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HomePage()))
                        },
                    child: Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20)),
                      child: Text(
                        _isThaiLang ? 'ลงชื่อเข้าใช้งาน' : 'Sign In',
                        style: TextStyle(fontSize: 18),
                      ),
                    )),
              )
            ],
          ),
        )),
      ),
    );
  }
}
