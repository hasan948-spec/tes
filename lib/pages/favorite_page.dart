import 'package:flutter/material.dart';
import 'package:tes/pages/about_page.dart';
import 'package:tes/pages/daftarDev_page.dart';
import 'package:tes/pages/help_page.dart';
import 'package:tes/pages/privacyPolice_page.dart';
import 'package:tes/services/favorite_service.dart';
import 'play_page.dart';

class FavoritePage extends StatelessWidget {
  const FavoritePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0019A7),

      appBar: AppBar(
        backgroundColor: const Color(0xFF0019A7),
        elevation: 0,
        title: const Text(
          "Favorite",
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
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.white38,
                        ),
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
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
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
                    trailing: Icon(Icons.arrow_forward_ios,size: 19,color: Colors.white,)
                ),
              ),
            ),
            Card(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
              color: Colors.blue.shade500,
              child: SizedBox(
                width: double.infinity,
                child: ListTile(
                    contentPadding: EdgeInsets.symmetric(horizontal: 20),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DaftardevPage(),
                        ),
                      );
                    },
                    title: Text(
                      "Daftar DEV",
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                    trailing: Icon(Icons.arrow_forward_ios,size: 19,color: Colors.white,)
                ),
              ),
            ),
            Card(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
              color: Colors.blue.shade500,
              child: SizedBox(
                width: double.infinity,
                child: ListTile(
                    contentPadding: EdgeInsets.symmetric(horizontal: 20),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HelpPage(),
                        ),
                      );
                    },
                    title: Text(
                      "Help",
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                    trailing: Icon(Icons.arrow_forward_ios,size: 19,color: Colors.white,)
                ),
              ),
            ),
            Card(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
              color: Colors.blue.shade500,
              child: SizedBox(
                width: double.infinity,
                child: ListTile(
                    contentPadding: EdgeInsets.symmetric(horizontal: 20),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => AboutPage(),
                        ),
                      );
                    },
                    title: Text(
                      "About",
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                    trailing: Icon(Icons.arrow_forward_ios,size: 19,color: Colors.white,)
                ),
              ),
            ),
          ],
        ),
      ),
      body: favorite.isEmpty
          ? Center(
        child: Text(
          "Belum ada favorit ",
          style: TextStyle(color: Colors.white),
        ),
      )
          : ListView.builder(
        itemCount: favorite.length,
        itemBuilder: (context, index) {
          final video = favorite[index];

          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      PlayPage(videoId: video.videoId),
                ),
              );
            },
            child: Container(
              margin: const EdgeInsets.all(20),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 160,
                    height: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      image: DecorationImage(
                        image: AssetImage(video.thumbnailUrl),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(width: 12),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          video.tittle,
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                          ),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                        SizedBox(height: 4),
                        Text(
                          video.views,
                          style: TextStyle(
                              color: Colors.white70, fontSize: 12),
                        ),
                        Text(
                          video.author,
                          style: TextStyle(
                              color: Colors.white70, fontSize: 12),
                        ),
                        Row(
                          children: [
                            Icon(Icons.favorite,
                                color: Colors.red, size: 12),
                            SizedBox(width: 4),
                            Text(
                              video.likes,
                              style: TextStyle(
                                color: Colors.white70,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}