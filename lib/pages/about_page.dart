import 'package:flutter/material.dart';

class AboutPage extends StatefulWidget {
  const AboutPage({super.key});

  @override
  State<AboutPage> createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
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
              leading: Icon(Icons.info, size: 25, color: Colors.white),
              title: Text(
                "About",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                  color: Colors.white,
                ),
              ),
            ),
            Text(
              "This app was designed to provide a simple, fast, and convenient experience for users. With a simple interface and modern features, users can enjoy a variety of content, save favorites, and navigate the app more easily. Thank you for using our app.",
              style: TextStyle(color: Colors.white),
            ),
            SizedBox(height: 25),
            Text("Version 019.86", style: TextStyle(color: Colors.white)),
          ],
        ),
      ),
    );
  }
}
