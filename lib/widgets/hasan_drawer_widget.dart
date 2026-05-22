import 'package:flutter/material.dart';
import 'package:tes/auts/febri_login.dart';
import 'package:tes/pages/rico_about_page.dart';
import 'package:tes/pages/rico_daftarDev_page.dart';
import 'package:tes/pages/rico_help_page.dart';
import 'package:tes/pages/rico_privacy_page.dart';

class HasanDrawerWidget extends StatefulWidget {
  const HasanDrawerWidget({super.key});

  @override
  State<HasanDrawerWidget> createState() => _HasanDrawerWidgetState();
}

class _HasanDrawerWidgetState extends State<HasanDrawerWidget> {
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
                  Text(
                    "Sir owo",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
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
                MaterialPageRoute(builder: (context) => RicoPrivacypolicePage()),
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
          SizedBox(height: 110),
          Container(
            height: 45,
            width: 180,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.red,
            ),
            child: ListTile(
              leading: Icon(Icons.logout, color: Colors.white),
              title: Text("Logout", style: TextStyle(color: Colors.white)),
              onTap: () {
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    title: Text(
                      "Apakah Anda yakin untuk logout",
                      style: TextStyle(color: Colors.white),
                    ),
                    backgroundColor: Colors.blue.shade900,
                    actions: [
                      ElevatedButton(
                        onPressed: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => FebriLogin(),
                            ),
                          );
                        },
                        child: Text(
                          "Yes",
                          style: TextStyle(color: Colors.white),
                        ),
                        style: ButtonStyle(
                          backgroundColor: WidgetStatePropertyAll(Colors.red),
                        ),
                      ),
                      SizedBox(width: 200),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text(
                          "No",
                          style: TextStyle(color: Colors.white),
                        ),
                        style: ButtonStyle(
                          backgroundColor: WidgetStatePropertyAll(Colors.green),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
