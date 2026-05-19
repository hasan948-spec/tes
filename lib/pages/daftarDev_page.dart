import 'package:flutter/material.dart';

class DaftardevPage extends StatefulWidget {
  const DaftardevPage({super.key});

  @override
  State<DaftardevPage> createState() => _DaftardevPageState();
}

class _DaftardevPageState extends State<DaftardevPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Back", style: TextStyle(fontWeight: FontWeight.bold)),
        flexibleSpace: Container(
          decoration: BoxDecoration(color: Color(0xFF0019A7)),
        ),
      ),
      backgroundColor: Color(0xFF0019A7),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            ListTile(
              leading: Icon(Icons.people, size: 25, color: Colors.white),
              title: Text(
                "Daftar Developer",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                  color: Colors.white,
                ),
              ),
            ),
            Text(
              "Hasan X-RPL-2",
              style: TextStyle(color: Colors.white,fontSize: 15),
            ),
            Text(
              "Febri Naro X-RPL-2",
              style: TextStyle(color: Colors.white,fontSize: 15),
            ),
            Text(
              "Mohammad Riko Fardana X-RPL-2",
              style: TextStyle(color: Colors.white,fontSize: 15),
            ),
          ],
        ),
      ),
    );
  }
}
