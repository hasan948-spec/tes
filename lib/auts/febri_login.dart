import 'package:flutter/material.dart';
import 'package:tes/auts/febri_regist.dart';

class FebriLogin extends StatefulWidget {
  const FebriLogin({super.key});

  @override
  State<FebriLogin> createState() => _FebriLoginState();
}

class _FebriLoginState extends State<FebriLogin> {
  final TextEditingController _username = TextEditingController();
  final TextEditingController _password = TextEditingController();
  bool _isObscure = true;
  IconData _isObscureIcon = Icons.remove_red_eye_outlined;

  void isObscureText() {
    if (_isObscure) {
      _isObscure = false;
      _isObscureIcon = Icons.remove_red_eye_outlined;
    } else {
      _isObscure = true;
      _isObscureIcon = Icons.remove_red_eye;
    }
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(color: Color(0xFF0019A7)),
          padding: const EdgeInsets.all(20),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(60),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "Login",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 50,
                      color: Colors.white,
                    ),
                  ),
                  Icon(Icons.person, size: 250, color: Colors.white),
                  SizedBox(height: 22),
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
                        borderRadius: BorderRadius.circular(20),
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
                    controller: _username,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      hintText: 'Email',
                      alignLabelWithHint: true,
                      focusColor: Colors.transparent,
                      fillColor: Colors.white,
                      filled: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
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
                    obscureText: _isObscure,
                    decoration: InputDecoration(
                      suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            isObscureText();
                          });
                        },
                        icon: Icon(_isObscureIcon, color: Colors.black),
                      ),
                      hintText: 'pasword',
                      alignLabelWithHint: true,
                      focusColor: Colors.transparent,
                      fillColor: Colors.white,
                      filled: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
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
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      foregroundColor: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    onPressed: () {
                      if (_username.text == "MAJIE" &&
                          _password.text == "Malji Gendeng") {
                        showDialog(
                          context: context,
                          builder: (context) =>
                              AlertDialog(title: Text("Login sukses !")),
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
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
