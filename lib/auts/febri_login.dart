import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:tes/auts/febri_regist.dart';
import 'package:tes/pages/hasan_dashboard_page.dart';

class FebriLogin extends StatefulWidget {
  const FebriLogin({super.key});

  @override
  State<FebriLogin> createState() => _FebriLoginState();
}

class _FebriLoginState extends State<FebriLogin> {
  final TextEditingController _username = TextEditingController();
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();
  bool _isTdk = true;
  IconData _isTdkIcon = CupertinoIcons.eye_slash_fill;

  void isObscureText() {
    if (_isTdk) {
      _isTdk = false;
      _isTdkIcon = Icons.remove_red_eye;
    } else {
      _isTdk = true;
      _isTdkIcon = CupertinoIcons.eye_slash_fill;
    }
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(color: Color(0xFF0019A7)),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                children: [
                  SizedBox(height: 120),
                  Text(
                    "Login",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 50,
                      color: Colors.white,
                    ),
                  ),
                  Icon(Icons.person, size: 180, color: Colors.white),
                  SizedBox(height: 15),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(width: 10),
                      Text(
                        "Username",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white70,
                        ),
                      ),
                    ],
                  ),
                  TextField(
                    controller: _username,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      hintText: 'username',
                      alignLabelWithHint: true,
                      focusColor: Colors.transparent,
                      fillColor: Colors.white,
                      filled: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(width: 10),
                      Text(
                        "Email",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white70,
                        ),
                      ),
                    ],
                  ),
                  TextField(
                    controller: _email,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      hintText: 'email',
                      alignLabelWithHint: true,
                      focusColor: Colors.transparent,
                      fillColor: Colors.white,
                      filled: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(width: 10),
                      Text(
                        "Password",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white70,
                        ),
                      ),
                    ],
                  ),
                  TextField(
                    controller: _password,
                    keyboardType: TextInputType.text,
                    obscureText: _isTdk,
                    decoration: InputDecoration(
                      suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            isObscureText();
                          });
                        },
                        icon: Icon(_isTdkIcon, color: Colors.black),
                      ),
                      hintText: 'pasword',
                      alignLabelWithHint: true,
                      focusColor: Colors.transparent,
                      fillColor: Colors.white,
                      filled: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Wrap(
                    crossAxisAlignment: WrapCrossAlignment.center,
                    children: [
                      Text(
                        "belum punya acount?",
                        style: TextStyle(color: Colors.white),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => FebriRegister(),
                            ),
                          );
                        },
                        child: Text(
                          'Daftar',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.blueAccent,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  SizedBox(
                    height: 40,
                    width: 520,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        foregroundColor: Colors.black,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      onPressed: () {
                        if ((_username.text == "Hasan" &&
                                _email.text == "hasan@meletube.com" &&
                                _password.text == "HanzBrudass") ||
                            (_username.text == "Rico" &&
                                _email.text == "rico@meletube.com" &&
                                _password.text == "ambrik") ||
                            _username.text == "Febri" &&
                                _email.text == "febri@meletube.com" &&
                                _password.text == "mbeldos") {
                          showDialog(
                            context: context,
                            builder: (context) => HasanDashboardPage(
                              username: _username.text,
                              email: _email.text, vid: '',
                            ),
                          );
                        } else {
                          showDialog(
                            context: context,
                            builder: (context) =>
                                AlertDialog(title: Text("Login Gagal")),
                          );
                        }
                      },
                      child: Text("Login"),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
