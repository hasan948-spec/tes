import 'package:flutter/material.dart';
import 'package:tes/widgets/category_widget.dart';
import 'package:tes/widgets/channel_widget.dart';
import 'package:tes/widgets/rekomen_widget.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:tes/pages/favorite_page.dart';
import 'package:tes/services/favorite_service.dart';
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
                    "${video.views} view",
                    style: TextStyle(
                      color: Colors.white70,
                    ),
                  ),
                  SizedBox(height: 12),
                  CategoryWidget(),
                  SizedBox(height: 20),
                  ChannelWidget(),
                  SizedBox(height: 20),
                  RekomenWidget(videoId: video.videoId)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}