import 'package:flutter/material.dart';
import 'package:tes/auts/febri_login.dart';
import 'package:tes/pages/about_page.dart';
import 'package:tes/pages/daftarDev_page.dart';
import 'package:tes/pages/help_page.dart';
import 'package:tes/pages/privacyPolice_page.dart';

class DrawerWidget extends StatefulWidget {
  const DrawerWidget({super.key});

  @override
  State<DrawerWidget> createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.blue.shade900,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 50),
          Row(
            children: [
              CircleAvatar(
                radius: 45,
                backgroundImage: AssetImage("assets/images/owo.jpg"),
              ),
              SizedBox(width: 15),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Sir owo", style: TextStyle(color: Colors.white, fontSize: 20)),
                  Text("owo@mele.com", style: TextStyle(color: Colors.white70)),
                ],
              ),
            ],
          ),
          Divider(color: Colors.white),
          ListTile(
            title: Text(
              "Privacy Police",
              style: TextStyle(color: Colors.white),
            ),
            leading: Icon(Icons.lock, color: Colors.white),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => PrivacypolicePage()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.people, color: Colors.white),
            title: Text("Daftar DEV", style: TextStyle(color: Colors.white)),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => DaftardevPage()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.help, color: Colors.white),
            title: Text("Help", style: TextStyle(color: Colors.white)),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HelpPage()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.info, color: Colors.white),
            title: Text("About", style: TextStyle(color: Colors.white)),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AboutPage()),
              );
            },
          ),
          SizedBox(height: 110),
          Container(
            height: 45,
            width: 180,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.red),
            child: ListTile(
              leading: Icon(Icons.logout, color: Colors.white),
              title: Text("Logout", style: TextStyle(color: Colors.white)),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => FebriLogin()),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
