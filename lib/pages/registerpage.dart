import 'package:csc_preorder_beta/pages/loginpage.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  bool visible = true;
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();
  FirebaseAuth _auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("สมัครใช้งาน"),
      ),
      body: Form(
          child: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: Center(
                  child: Text("CSC-PreOrder",
                      style: TextStyle(
                        fontSize: 50,
                        color: Colors.orange,
                        fontWeight: FontWeight.bold,
                      )),
                ),
              ),
              Container(
                child: Center(
                  child: Text("โปรดกรอกข้อมูลลงในฟอร์มด้านล่าง",
                      style: TextStyle(
                        color: Colors.black12,
                        fontWeight: FontWeight.bold,
                      )),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              TextFormField(
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
              SizedBox(height: 12.0),
              TextFormField(
                controller: _passwordController,
                obscureText: visible,
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(16.0),
                    hintText: 'รหัสผ่าน',
                    prefixIcon: Icon(Icons.lock),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30.0),
                        borderSide: BorderSide.none),
                    filled: true,
                    fillColor: Colors.grey.withOpacity(0.1),
                    suffix: InkWell(
                      child: visible
                          ? Icon(Icons.visibility_off)
                          : Icon(Icons.visibility),
                      onTap: () => {
                        setState(() => {visible = !visible})
                      },
                    )),
              ),
              SizedBox(height: 12.0),
              TextFormField(
                controller: _confirmPasswordController,
                obscureText: visible,
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(16.0),
                    hintText: 'ยืนยันรหัสผ่าน',
                    prefixIcon: Icon(Icons.lock),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30.0),
                        borderSide: BorderSide.none),
                    filled: true,
                    fillColor: Colors.grey.withOpacity(0.1),
                    suffix: InkWell(
                      child: visible
                          ? Icon(Icons.visibility_off)
                          : Icon(Icons.visibility),
                      onTap: () => {
                        setState(() => {visible = !visible})
                      },
                    )),
              ),
              SizedBox(height: 12.0),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    child: Text('สมัครใช้งาน'),
                    onPressed: () => {signUp()},
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30))),
                    )),
              ),
            ],
          ),
        ),
      )),
    );
  }

  signUp() {
    String email = _emailController.text.trim();
    String password = _passwordController.text.trim();
    String confirmPassword = _confirmPasswordController.text.trim();
    if (password == confirmPassword && password.length >= 6) {
      _auth
          .createUserWithEmailAndPassword(email: email, password: password)
          .then((user) {
        print("Sign up user successful.");
        Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(builder: (context) => LoginPage()),
            ModalRoute.withName('/'));
      }).catchError((error) {
        print(error.message);
      });
    } else {
      print("Password and Confirm-password is not match.");
    }
  }
}
