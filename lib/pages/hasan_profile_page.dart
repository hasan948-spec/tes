import 'package:flutter/material.dart';

class HasanProfilePage extends StatefulWidget {
  const HasanProfilePage({super.key});

  @override
  State<HasanProfilePage> createState() => _HasanProfilePageState();
}

class _HasanProfilePageState extends State<HasanProfilePage> {
  final TextEditingController _unptUsrnm = TextEditingController();
  final TextEditingController _eml = TextEditingController();
  final TextEditingController _web = TextEditingController();
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
              Icon(Icons.person_2, color: Colors.white, size: 200),
              SizedBox(height: 15),
              SizedBox(
                height: 100,
                width: 400,
                child: TextField(
                  controller: _unptUsrnm,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Name",
                    labelStyle: TextStyle(color: Colors.white),
                    fillColor: Colors.white,
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                  ),
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
