import 'package:flutter/material.dart';
import 'package:tes/auts/febri_login.dart';
import 'package:tes/pages/Febri_noHPltertaut.dart';
import 'package:tes/pages/hasan_profile_page.dart';
import 'package:tes/widgets/Rico_drawer_widget.dart';

class HasanMyAccountPage extends StatefulWidget {
  final String username;
  final String email;
  final String password;
  const HasanMyAccountPage({
    super.key,
    required this.username,
    required this.email,
    required this.password,
  });

  @override
  State<HasanMyAccountPage> createState() => _HasanMyAccountPageState();
}

class _HasanMyAccountPageState extends State<HasanMyAccountPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade900,
        title: Text(
          "Akun",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      backgroundColor: Colors.blue.shade900,
      drawer: RicoDrawerWidget(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(width: 15),
            Container(
              width: 150,
              height: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(150),
                image: DecorationImage(
                  image: AssetImage("assets/images/owo.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(width: 15),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      widget.username,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 25
                      ),
                    ),
                    Text(
                      widget.email,
                      style: TextStyle(color: Colors.grey.shade500,fontSize: 20),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 25),
            Divider(color: Colors.white),
            SizedBox(height: 25),
            ListTile(
              leading: Icon(Icons.person, color: Colors.white),
              title: Text(
                "Profile",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HasanProfilePage()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.system_security_update, color: Colors.white),
              title: Text(
                "Nomor Tertaut",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => FebriMailtertaut()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.play_circle_filled, color: Colors.white),
              title: Text(
                "Your Video",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HasanProfilePage()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.account_circle_rounded, color: Colors.white),
              title: Text(
                "Email Tertaut",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HasanProfilePage()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.lock_reset, color: Colors.white),
              title: Text(
                "Reset your password",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HasanProfilePage()),
                );
              },
            ),
            SizedBox(height: 290),
            SizedBox(
              width: 400,
              height: 50,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue.shade500,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadiusGeometry.circular(8),
                  ),
                ),
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: Text(
                        "Do you want LogOut?",
                        style: TextStyle(color: Colors.white),
                      ),
                      actions: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
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
                                backgroundColor: WidgetStatePropertyAll(
                                  Colors.red,
                                ),
                              ),
                            ),
                            SizedBox(width: 120),
                            ElevatedButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: Text(
                                "No",
                                style: TextStyle(color: Colors.white),
                              ),
                              style: ButtonStyle(
                                backgroundColor: WidgetStatePropertyAll(
                                  Colors.green,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                      backgroundColor: Colors.blue.shade900,
                    ),
                  );
                },
                child: Text(
                  "LogOut Account",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
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
