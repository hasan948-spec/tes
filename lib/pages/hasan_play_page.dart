import 'package:flutter/material.dart';
import 'package:tes/widgets/hasan_category_widget.dart';
import 'package:tes/widgets/hasan_channel_widget.dart';
import 'package:tes/widgets/hasan_rekomen_widget.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import 'package:tes/services/hasan_play_service.dart';

class HasanPlayPage extends StatefulWidget {
  final String videoId;

  const HasanPlayPage({super.key, required this.videoId});

  @override
  State<HasanPlayPage> createState() => _HasanPlayPageState();
}

class _HasanPlayPageState extends State<HasanPlayPage> {
  late YoutubePlayerController controller;

  @override
  void initState() {
    super.initState();

    controller = YoutubePlayerController(
      initialVideoId: widget.videoId,
      flags: YoutubePlayerFlags(
        autoPlay: true,
        mute: false,
        enableCaption: false,
        forceHD: true,
        
      ),
    );
  }

  @override
  void dispose() {
    controller.dispose();
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
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      backgroundColor: Colors.blue.shade900,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AspectRatio(
              aspectRatio: 16 / 9,
              child: YoutubePlayer(
                controller: controller,
                showVideoProgressIndicator: true,
              ),
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
                    style: TextStyle(color: Colors.white70),
                  ),
                  SizedBox(height: 12),
                  CategoryWidget(videoId: widget.videoId,),
                  SizedBox(height: 20),
                  HasanChannelWidget(videoId: widget.videoId),
                  SizedBox(height: 20),
                  HasanRekomenWidget(videoId: video.videoId),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
