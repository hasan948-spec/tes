import 'package:flutter/material.dart';

class RicoPrivacypolicePage extends StatefulWidget {
  const RicoPrivacypolicePage({super.key});

  @override
  State<RicoPrivacypolicePage> createState() => _RicoPrivacypolicePageState();
}

class _RicoPrivacypolicePageState extends State<RicoPrivacypolicePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Back", style: TextStyle(fontWeight: FontWeight.bold)),
        flexibleSpace: Container(
          decoration: BoxDecoration(color: Colors.blue.shade900),
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
              "Your privacy is important to us. This application only collects the information needed to improve user experience and application performance. We do not share your personal information with third parties without your permission.By using this application, you agree to the collection and use of information in accordance with this policy. We are committed to keeping your data safe and secure",
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
