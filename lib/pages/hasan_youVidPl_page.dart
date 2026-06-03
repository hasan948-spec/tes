import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

import '../services/hasan_youVid_service.dart';

class HasanYouvidplPage extends StatefulWidget {
  final String vid;
  const HasanYouvidplPage({super.key, required this.vid});

  @override
  State<HasanYouvidplPage> createState() => _HasanYouvidplPageState();
}

class _HasanYouvidplPageState extends State<HasanYouvidplPage> {
  late YoutubePlayerController  contr;

  @override
  void initState() {
    super.initState();

    contr = YoutubePlayerController(
      initialVideoId: widget.vid,
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
    contr.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    final jj = wnk.firstWhere((z) => z.vid == widget.vid);
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
                controller: contr,
                showVideoProgressIndicator: true,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    jj.ttl,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    "${jj.views} view",
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
