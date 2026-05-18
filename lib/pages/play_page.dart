import 'package:flutter/material.dart';
import 'package:tes/widgets/play_widget.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:tes/models/follow_model.dart';
import 'package:tes/pages/favorite_page.dart';
import 'package:tes/pages/follow_page.dart';
import 'package:tes/services/favorite_service.dart';
import 'package:tes/services/follow_service.dart';
import 'package:tes/services/play_service.dart';

class PlayPage extends StatefulWidget {
  final String videoId;

  PlayPage({super.key, required this.videoId});

  @override
  State<PlayPage> createState() => _PlayPageState();
}

class _PlayPageState extends State<PlayPage> {
  late YoutubePlayerController controller;

  @override
  void initState() {
    super.initState();

    controller = YoutubePlayerController.fromVideoId(
      videoId: widget.videoId,
      autoPlay: true,
      params: YoutubePlayerParams(
        showControls: true,
        showFullscreenButton: true,
      ),
    );
  }

  @override
  void dispose() {
    controller.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final video = ll.firstWhere((e) => e.videoId == widget.videoId);

    return Scaffold(
      backgroundColor: Color(0xFF0019A7),

      appBar: AppBar(
        backgroundColor: Color(0xFF0019A7),
        centerTitle: true,
        title: Text(
          "MeleTube",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: Icon(Icons.arrow_back, color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AspectRatio(
              aspectRatio: 20 / 9,
              child: YoutubePlayer(controller: controller),
            ),
            Padding(
              padding: EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    video.desk,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    video.tayang,
                    style: TextStyle(
                      color: Colors.white70,
                    ),
                  ),
                  SizedBox(height: 15),
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          if (!favorite.contains(video)) {
                            favorite.add(video);
                          }
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => FavoritePage(),
                            ),
                          );
                        },
                        child: Icon(
                          Icons.favorite,
                          color: Colors.red,
                        ),
                      ),
                      SizedBox(width: 5),
                      Text(
                        video.likes,
                        style: TextStyle(color: Colors.white),
                      ),
                      SizedBox(width: 15),
                      Icon(
                        Icons.thumb_down_alt_outlined,
                        color: Colors.white,
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 22,
                        backgroundImage: AssetImage(video.imgChn),
                      ),
                      SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            video.author,
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 17,
                            ),
                          ),
                          Text(
                            "${video.views} subscriber",
                            style: TextStyle(
                              color: Colors.white70,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                      Spacer(),
                      ElevatedButton(
                        onPressed: () {
                          nyr.add(
                            FollowModel(
                              name: video.author,
                              img: video.imgChn,
                              jmlflw: video.views,
                              jmlhlk: video.likes,
                            ),
                          );
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => FollowPage(),
                            ),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xFF4285F4),
                        ),
                        child: Text(
                          "Follow",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  ListView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: ll.length,
                    itemBuilder: (context, index) {
                      final data = ll[index];
                      return PlayWidget(
                        img: data.thumbnailUrl,
                        ttl: data.tittle,
                        views: data.views,
                        author: data.author,
                        onTap: () {
                          controller.pauseVideo();
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (_) => PlayPage(
                                videoId: data.videoId,
                              ),
                            ),
                          );
                        },
                      );
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}