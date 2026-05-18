import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:tes/auts/febri_login.dart';
import 'package:tes/pages/dashboard_page.dart';

class FebriRegister extends StatefulWidget {
  const FebriRegister({super.key});

  @override
  State<FebriRegister> createState() => _FebriRegisterState();
}

class _FebriRegisterState extends State<FebriRegister> {
  final TextEditingController _pwe = TextEditingController();
  final TextEditingController _pwea = TextEditingController();
  final TextEditingController _mail = TextEditingController();

  IconData _eye = CupertinoIcons.eye_slash_fill;
  IconData _mata = CupertinoIcons.eye_slash_fill;
  bool _regis = true;
  bool _regs = true;

  void eye() {
    setState(() {
      if (_regis) {
        _regis = false;
        _eye = Icons.remove_red_eye;
      } else {
        _regis = true;
        _eye = CupertinoIcons.eye_slash_fill;
      }
    });
  }

  void mata() {
    setState(() {
      if (_regs) {
        _regs = false;
        _mata = Icons.remove_red_eye_rounded;
      } else {
        _regs = true;
        _mata = CupertinoIcons.eye_slash_fill;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 30),
          width: size.width,
          height: size.height,
          decoration: BoxDecoration(
            color: Color(0xFF0019A7)
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Register",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              Icon(Icons.person,size: 180,color: Colors.white,),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Username',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              TextField(
                controller: _mail,
                decoration: InputDecoration(
                  hintText: "Username",
                  fillColor: Colors.white,
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
              SizedBox(height: 12),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Password',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white70,
                    ),
                  ),
                ],
              ),
              TextField(
                controller: _pwe,
                obscureText: _regis,
                decoration: InputDecoration(
                  hintText: "Passwordd",
                  fillColor: Colors.white,
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  suffixIcon: IconButton(onPressed: eye, icon: Icon(_eye)),
                ),
              ),
              SizedBox(height: 12),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Confirm Password',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white70,
                    ),
                  ),
                ],
              ),
              TextField(
                controller: _pwea,
                obscureText: _regs,
                decoration: InputDecoration(
                  hintText: "Confirm Password",
                  fillColor: Colors.white,
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  suffixIcon: IconButton(onPressed: mata, icon: Icon(_mata)),
                ),
              ),
              SizedBox(height: 12),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => FebriLogin(),));
                  }, child: Text("Batal")),
                  SizedBox(width: 50),
                  ElevatedButton(
                    onPressed: () {
                      if (_mail.text == _mail.text && _pwe.text == _pwea.text) {
                        showDialog(
                            context: context,
                            builder: (context) =>
                                DashboardPage()
                        );
                      } else {
                        showDialog(
                          context: context,
                          builder: (context) => AlertDialog(
                            title: Text("GAGAL Regist"),
                          ),
                        );
                      }
                    },
                    child: Text("Regist"),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
