import 'package:flutter/material.dart';

class FebriMailtertaut extends StatefulWidget {
  const FebriMailtertaut({super.key});

  @override
  State<FebriMailtertaut> createState() => _FebriMailtertautState();
}

class _FebriMailtertautState extends State<FebriMailtertaut> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade900,
      appBar: AppBar(
        title: Text(
          "No HP Tertaut",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
        backgroundColor: Colors.blue.shade900,
      ),
      body: Center(
        child: Column(
          children: [
            Icon(Icons.mail, color: Colors.white, size: 200),
            SizedBox(height: 15),
            SizedBox(
              height: 50,
              width: 450,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  color: Colors.white,
                ),
                child: Center(
                  child: Text(
                    "No HP : 0865-4664-4563",
                    style: TextStyle(fontSize: 15),
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            SizedBox(
              height: 50,
              width: 450,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  color: Colors.white,
                ),
                child: Center(
                  child: Text(
                    "No HP : 0865-4664-4563",
                    style: TextStyle(fontSize: 15),
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            SizedBox(
              height: 50,
              width: 450,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  color: Colors.white,
                ),
                child: Center(
                  child: Text(
                    "No HP : 0865-4664-4563",
                    style: TextStyle(fontSize: 15),
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            SizedBox(
              height: 50,
              width: 450,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  color: Colors.white,
                ),
                child: Center(
                  child: Text(
                    "No HP : 0865-4664-4563",
                    style: TextStyle(fontSize: 15),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
