import 'package:csc_preorder_beta/pages/login/loginpage.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final TextEditingController _passwordController = TextEditingController();
  final FirebaseAuth _auth = FirebaseAuth.instance;
  bool visible = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ตั้งค่าบัญชี'),
      ),
      body: Column(
        children: [
          ListTile(
            onTap: () {},
            leading: Icon(Icons.location_on_outlined),
            title: Text('ที่อยู่ของฉัน'),
          ),
        ],
      ),
    );
  }

  changePassword(context) {
    User user = FirebaseAuth.instance.currentUser;
    user.updatePassword(_passwordController.text.trim()).then((_) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text("เปลี่ยนรหัสผ่านสำเร็จ",
            style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.greenAccent,
      ));
      signOut(context);
    }).catchError((error) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text(error.message, style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.red,
      ));
    });
  }

  void signOut(BuildContext context) {
    _auth.signOut();
    print("Signed out");
    Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(builder: (context) => LoginPage()),
        ModalRoute.withName('/'));
  }
}
