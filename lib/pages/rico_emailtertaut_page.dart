import 'package:flutter/material.dart';

class RicoEmailtertautPage extends StatefulWidget {
  const RicoEmailtertautPage({super.key});

  @override
  State<RicoEmailtertautPage> createState() => _RicoEmailtertautPageState();
}

class _RicoEmailtertautPageState extends State<RicoEmailtertautPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade900,
      appBar: AppBar(
        title: Text(
          "Email Tertaut",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
        backgroundColor: Colors.blue.shade900,
      ),
      body: Center(
        child: Column(
          children: [
            Icon(Icons.mail, color: Colors.white, size: 200),
            SizedBox(height: 10),
            Text("EMAIL",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30,color: Colors.white),),
            SizedBox(height: 15),
            SizedBox(
              height: 50,
              width: 400,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.white,
                ),
                child: Center(
                  child: Text(
                    "Hasan@meletub.com",
                    style: TextStyle(fontSize: 15),
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            SizedBox(
              height: 50,
              width: 400,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.white,
                ),
                child: Center(
                  child: Text(
                    "Febri@meletub.com",
                    style: TextStyle(fontSize: 15),
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            SizedBox(
              height: 50,
              width: 400,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.white,
                ),
                child: Center(
                  child: Text(
                    "Riko@meletub.com",
                    style: TextStyle(fontSize: 15),
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            SizedBox(
              height: 50,
              width: 400,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.white,
                ),
                child: Center(
                  child: Text(
                    "Pardi@meletub.com",
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
