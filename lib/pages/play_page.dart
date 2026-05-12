import 'package:flutter/material.dart';
import 'package:tes/models/follow_model.dart';
import 'package:tes/pages/follow_page.dart';
import 'package:tes/services/play_service.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:tes/services/favorite_service.dart';
import 'package:tes/pages/favorite_page.dart';

import '../services/follow_service.dart';

class PlayPage extends StatefulWidget {
  final String videoId;
  const PlayPage({super.key, required this.videoId});

  @override
  State<PlayPage> createState() => _PlayPageState();
}

class _PlayPageState extends State<PlayPage> {
  late YoutubePlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = YoutubePlayerController.fromVideoId(
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
    _controller.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final video = ll.firstWhere((v) => v.videoId == widget.videoId);
    return Scaffold(
      backgroundColor: Color(0xFF0019A7),
      appBar: AppBar(
        backgroundColor: Color(0xFF0019A7),
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text(
          "MeleTube",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AspectRatio(
              aspectRatio: 20 / 9,
              child: YoutubePlayer(controller: _controller),
            ),

            Padding(
              padding: EdgeInsets.all(16.0),
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
                    style: TextStyle(color: Colors.white70, fontSize: 12),
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
                              builder: (context) => FavoritePage(),
                            ),
                          );
                        },
                        child: Icon(
                          Icons.favorite,
                          color: Colors.red,
                          size: 20,
                        ),
                      ),
                      SizedBox(width: 5),
                      Text(video.likes, style: TextStyle(color: Colors.white)),
                      SizedBox(width: 15),
                      Icon(
                        Icons.thumb_down_alt_outlined,
                        color: Colors.white,
                        size: 20,
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 22,
                        backgroundImage: AssetImage(video.thumbnailUrl),
                      ),

                      SizedBox(width: 10),

                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            video.author,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
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
                              img: video.thumbnailUrl,
                              jmlflw: video.views,
                              jmlhlk: video.likes,
                            ),
                          );

                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => FollowPage(),
                            ),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xFF4285F4),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        child: Text(
                          "Follow",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 10),
                    child: ListView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: ll.length,
                      itemBuilder: (context, index) {
                        final v = ll[index];
                        return Padding(
                          padding: const EdgeInsets.only(bottom: 10),
                          child: _buildVideoRekomentasi(
                            v.tittle,
                            v.views,
                            v.author,
                            v.videoId,
                            v.thumbnailUrl
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildVideoRekomentasi(
    String title,
    String views,
    String author,
    String videoId, 
      String thumbnailUrl,
  ) {
    return InkWell(
        onTap: () {
          _controller.pauseVideo();

          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => PlayPage(videoId: videoId),
            ),
          );
        },
      child: Padding(
        padding: const EdgeInsets.only(bottom: 10),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 120,
              height: 70,
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage(thumbnailUrl)),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Icon(Icons.play_circle_fill, color: Colors.white),
            ),
            SizedBox(width: 10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    views,
                    style: TextStyle(color: Colors.white70, fontSize: 12),
                  ),
                  Text(
                    "👤 $author",
                    style: TextStyle(color: Colors.white70, fontSize: 12),
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
