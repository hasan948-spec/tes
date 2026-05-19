import 'package:flutter/material.dart';

class HelpPage extends StatefulWidget {
  const HelpPage({super.key});

  @override
  State<HelpPage> createState() => _HelpPageState();
}

class _HelpPageState extends State<HelpPage> {
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
              leading: Icon(Icons.privacy_tip, size: 25, color: Colors.white),
              title: Text(
                "Privacy Policy",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                  color: Colors.white,
                ),
              ),
            ),
            Text(
              "If you experience problems while using the application, please make sure your internet connection is stable and the application is updated to the latest version.For further assistance, please contact our support team through the contact feature available in the application",
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
