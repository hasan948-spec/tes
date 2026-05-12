import 'package:flutter/material.dart';
import 'package:tes/pages/about_page.dart';
import 'package:tes/pages/daftarDev_page.dart';
import 'package:tes/pages/help_page.dart';
import 'package:tes/pages/privacyPolice_page.dart';
import 'package:tes/services/follow_service.dart';

class FollowPage extends StatefulWidget {
  const FollowPage({super.key});

  @override
  State<FollowPage> createState() => _FollowPageState();
}

class _FollowPageState extends State<FollowPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0019A7),

      appBar: AppBar(
        backgroundColor: const Color(0xFF0019A7),
        elevation: 0,
        title: const Text(
          "Follow",
          style: TextStyle(
            color: Colors.white,
            fontSize: 28,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      drawer: Drawer(
        backgroundColor: Colors.blue.shade900,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 60, left: 20, bottom: 20),
              child: Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.white, width: 2),
                    ),
                    child: CircleAvatar(
                      radius: 50,
                      backgroundImage: AssetImage("assets/images/owo.jpg"),
                    ),
                  ),
                  SizedBox(width: 15),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Sir owo",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "owo@mele.com",
                        style: TextStyle(fontSize: 14, color: Colors.white38),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Text(
              "-------------------------------------------------------------------------",
              style: TextStyle(color: Colors.white),
            ),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              color: Colors.blue.shade500,
              child: SizedBox(
                width: double.infinity,
                child: ListTile(
                  contentPadding: EdgeInsets.symmetric(horizontal: 20),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => PrivacypolicePage(),
                      ),
                    );
                  },
                  title: Text(
                    "Privacy Police",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    size: 19,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              color: Colors.blue.shade500,
              child: SizedBox(
                width: double.infinity,
                child: ListTile(
                  contentPadding: EdgeInsets.symmetric(horizontal: 20),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => DaftardevPage()),
                    );
                  },
                  title: Text(
                    "Daftar DEV",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    size: 19,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              color: Colors.blue.shade500,
              child: SizedBox(
                width: double.infinity,
                child: ListTile(
                  contentPadding: EdgeInsets.symmetric(horizontal: 20),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HelpPage()),
                    );
                  },
                  title: Text(
                    "Help",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    size: 19,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              color: Colors.blue.shade500,
              child: SizedBox(
                width: double.infinity,
                child: ListTile(
                  contentPadding: EdgeInsets.symmetric(horizontal: 20),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => AboutPage()),
                    );
                  },
                  title: Text(
                    "About",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    size: 19,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      body: ListView.builder(
        itemCount: nyr.length,
        itemBuilder: (context, index) {
          final user = nyr[index];

          return Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 14),
            child: Row(
              children: [
                CircleAvatar(radius: 38, backgroundImage: AssetImage(user.img)),
                SizedBox(width: 16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        user.name,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 4),
                      Text(
                        "${user.jmlflw}",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(height: 2),
                      Row(
                        children: [
                          Icon(
                            Icons.favorite,
                            color: Colors.pink,
                            size: 18,
                          ),
                          SizedBox(width: 4),
                          Text(
                            "${user.jmlhlk} like",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),

                      SizedBox(height: 8),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            nyr.removeAt(index);
                          });
                        },
                        child: Container(
                          width: 140,
                          height: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            border: Border.all(
                              color: Colors.lightBlueAccent,
                              width: 2,
                            ),
                          ),
                          child: Center(
                            child: Text(
                              "Followed",
                              style: TextStyle(
                                color: Colors.lightBlueAccent,
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
