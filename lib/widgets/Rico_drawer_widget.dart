import 'package:flutter/material.dart';
import 'package:tes/pages/rico_about_page.dart';
import 'package:tes/pages/rico_daftarDev_page.dart';
import 'package:tes/pages/rico_help_page.dart';
import 'package:tes/pages/rico_privacy_page.dart';

class RicoDrawerWidget extends StatefulWidget {
  const RicoDrawerWidget({super.key});

  @override
  State<RicoDrawerWidget> createState() => _RicoDrawerWidgetState();
}

class _RicoDrawerWidgetState extends State<RicoDrawerWidget> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.blue.shade900,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            title: Text(
              "Privacy Police",
              style: TextStyle(color: Colors.white),
            ),
            leading: Icon(Icons.lock, color: Colors.white),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => RicoPrivacypolicePage(),
                ),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.people, color: Colors.white),
            title: Text("Daftar DEV", style: TextStyle(color: Colors.white)),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => RicoDaftardevPage()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.help, color: Colors.white),
            title: Text("Help", style: TextStyle(color: Colors.white)),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => RicoHelpPage()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.info, color: Colors.white),
            title: Text("About", style: TextStyle(color: Colors.white)),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => RicoAboutPage()),
              );
            },
          ),
        ],
      ),
    );
  }
}
