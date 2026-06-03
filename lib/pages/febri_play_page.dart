import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

import '../services/Febri_chanel_service.dart';
import '../services/febri_chn1_service.dart';

class FebriPlayPage extends StatefulWidget {
  final String vidi;

  const FebriPlayPage({super.key, required this.vidi});

  @override
  State<FebriPlayPage> createState() => _FebriPlayPageState();
}

class _FebriPlayPageState extends State<FebriPlayPage> {
  late YoutubePlayerController bb;

  @override
  void initState() {
    super.initState();

    bb = YoutubePlayerController(
      initialVideoId: widget.vidi,
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
    bb.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final video = vv.firstWhere((e) => e.vidi == widget.vidi);
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
                controller: bb,
                showVideoProgressIndicator: true,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    video.ttll,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    "${video.piw} view",
                    style: TextStyle(color: Colors.white70),
                  ),
                  SizedBox(height: 12),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
