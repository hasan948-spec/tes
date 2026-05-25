import 'package:flutter/material.dart';

class RicoHelpPage extends StatefulWidget {
  const RicoHelpPage({super.key});

  @override
  State<RicoHelpPage> createState() => _RicoHelpPageState();
}

class _RicoHelpPageState extends State<RicoHelpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Back", style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white)),
        flexibleSpace: Container(
          decoration: BoxDecoration(color: Colors.blue.shade900),
        ),
      ),
      backgroundColor: Colors.blue.shade900,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            ListTile(
              leading: Icon(Icons.help, size: 25, color: Colors.white),
              title: Text(
                "Help",
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
