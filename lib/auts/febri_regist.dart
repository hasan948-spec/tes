import 'package:flutter/material.dart';
import 'package:tes/auts/febri_login.dart';

class FebriRegister extends StatefulWidget {
  const FebriRegister({super.key});

  @override
  State<FebriRegister> createState() => _FebriRegisterState();
}

class _FebriRegisterState extends State<FebriRegister> {
  final TextEditingController _nme = TextEditingController();
  final TextEditingController _pwe = TextEditingController();
  final TextEditingController _pwea = TextEditingController();
  final TextEditingController _mail = TextEditingController();

  IconData _eye = Icons.remove_red_eye;
  bool _regis = true;

  void eye() {
    setState(() {
      if (_regis) {
        _regis = false;
        _eye = Icons.remove_red_eye_outlined;
      } else {
        _regis = true;
        _eye = Icons.remove_red_eye;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
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
            Icon(Icons.person,size: 300,color: Colors.white,),
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
            SizedBox(height: 18),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Email',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            TextField(
              controller: _nme,
              decoration: InputDecoration(
                hintText: "Email",
                fillColor: Colors.white,
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
            SizedBox(height: 18),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Passwaord',
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
                hintText: "Password",
                fillColor: Colors.white,
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                suffixIcon: IconButton(onPressed: eye, icon: Icon(_eye)),
              ),
            ),
            SizedBox(height: 18),
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
              obscureText: _regis,
              decoration: InputDecoration(
                hintText: "Confirm Password",
                fillColor: Colors.white,
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                suffixIcon: IconButton(onPressed: eye, icon: Icon(_eye)),
              ),
            ),
            SizedBox(height: 15),

            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    if (_mail.text == _mail.text && _pwe.text == _pwea.text) {
                      showDialog(
                        context: context,
                        builder: (context) =>
                            AlertDialog(title: Text(' Register Berhasil')),
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
                  child: Text("REGIST"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
