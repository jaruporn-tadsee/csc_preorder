import 'package:csc_preorder_beta/pages/login/loginpage.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ForgotPassword extends StatefulWidget {
  @override
  _ForgotPasswordState createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
  FirebaseAuth _auth = FirebaseAuth.instance;
  final TextEditingController _emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('รีเซ็ตรหัสผ่าน'),
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(12),
            child: TextFormField(
              controller: _emailController,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.all(16.0),
                hintText: 'อีเมลผู้ใช้งาน',
                prefixIcon: Icon(Icons.email),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.0),
                    borderSide: BorderSide.none),
                filled: true,
                fillColor: Colors.grey.withOpacity(0.1),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  child: Text('รีเซ็ตรหัสผ่าน'),
                  onPressed: () => {
                        resetPassword().then(Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LoginPage())))
                      },
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30))),
                  )),
            ),
          ),
        ],
      ),
    );
  }

  resetPassword() {
    String email = _emailController.text.trim();
    _auth.sendPasswordResetEmail(email: email);
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text("We send the detail to $email successfully.",
          style: TextStyle(color: Colors.white)),
      backgroundColor: Colors.green[300],
    ));
  }
}
