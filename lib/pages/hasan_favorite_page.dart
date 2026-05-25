import 'package:flutter/material.dart';
import 'package:tes/services/hasan_favorite_service.dart';
import 'package:tes/widgets/Rico_drawer_widget.dart';
import 'package:tes/widgets/hasan_favorite_widget.dart';
import 'hasan_play_page.dart';

class FavoritePage extends StatelessWidget {
  const FavoritePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade900,
      appBar: AppBar(
        backgroundColor: Colors.blue.shade900,
        elevation: 0,
        title: Text(
          "Favorite",
          style: TextStyle(
            color: Colors.white,
            fontSize: 28,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          CircleAvatar(backgroundImage: AssetImage("assets/images/owo.jpg")),
        ],
      ),
      drawer: RicoDrawerWidget(),
      body: ListView.builder(
        itemCount: favorite.length,
        itemBuilder: (context, index) {
          final video = favorite[index];
          return HasanFavoriteWidget(
            thumb: video.thumbnailUrl,
            ttl: video.tittle,
            views: video.views,
            author: video.chnName,
            likes: video.likes,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => HasanPlayPage(videoId: video.videoId),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
