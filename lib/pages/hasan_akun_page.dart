import 'package:flutter/material.dart';
import 'package:tes/auts/febri_login.dart';
import 'package:tes/widgets/hasan_drawer_widget.dart';

class HasanAkunPage extends StatelessWidget {
  const HasanAkunPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade900,
        title: Text(
          "Akun",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      backgroundColor: Colors.blue.shade900,
      drawer: HasanDrawerWidget(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 60,
                    backgroundImage: AssetImage("assets/images/owo.jpg"),
                  ),
                ],
              ),
              SizedBox(height: 15),
              Text("username:", style: TextStyle(color: Colors.white)),
              Container(
                width: double.infinity,
                height: 40,
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text("Hasan"),
              ),
              SizedBox(height: 15),
              Text("email:", style: TextStyle(color: Colors.white)),
              Container(
                width: double.infinity,
                height: 40,
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text("cung@mele.com"),
              ),
              SizedBox(height: 15),
              Text("no HP:", style: TextStyle(color: Colors.white)),
              Container(
                width: double.infinity,
                height: 40,
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text("+62 887-6219-1037"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
