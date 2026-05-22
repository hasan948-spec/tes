import 'package:flutter/material.dart';
import 'package:tes/widgets/hasan_category_widget.dart';
import 'package:tes/widgets/hasan_channel_widget.dart';
import 'package:tes/widgets/hasan_rekomen_widget.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:tes/pages/hasan_favorite_page.dart';
import 'package:tes/services/hasan_favorite_service.dart';
import 'package:tes/services/hasan_play_service.dart';

class HasanPlayPage extends StatefulWidget {
  final String videoId;

  HasanPlayPage({super.key, required this.videoId});

  @override
  State<HasanPlayPage> createState() => _HasanPlayPageState();
}

class _HasanPlayPageState extends State<HasanPlayPage> {
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
      appBar: AppBar(
        backgroundColor: Colors.blue.shade900,
        title: Text(
          "MeleTube",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      backgroundColor: Colors.blue.shade900,
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
                  HasanChannelWidget(),
                  SizedBox(height: 20),
                  HasanRekomenWidget(videoId: video.videoId)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}