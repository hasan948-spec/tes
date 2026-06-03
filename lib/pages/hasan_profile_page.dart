import 'package:flutter/material.dart';
import 'package:tes/auts/febri_login.dart';

class HasanProfilePage extends StatefulWidget {
  final String username;
  final String email;
  final String password;
  const HasanProfilePage({
    super.key,
    required this.username,
    required this.email,
    required this.password,
  });

  @override
  State<HasanProfilePage> createState() => _HasanProfilePageState();
}

class _HasanProfilePageState extends State<HasanProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade900,
      appBar: AppBar(
        title: Text(
          "Edit Profile",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
        flexibleSpace: Container(
          decoration: BoxDecoration(color: Colors.blue.shade900),
        ),
        actions: [
          TextButton(
            onPressed: () {},
            child: Text(
              "Save",
              style: TextStyle(color: Colors.white, fontSize: 15),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 15),
              CircleAvatar(
                backgroundImage: AssetImage("assets/images/owo.jpg"),
                radius: 70,
              ),
              SizedBox(height: 5),
              Text(
                "Your Profil",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 35,
                ),
              ),
              Divider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "username:",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  Text(
                    widget.username,
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "email:",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  Text(
                    widget.email,
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "no Hp:",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  Text(
                    "082389232491",
                    style: TextStyle(color: Colors.white, fontSize: 20),
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
