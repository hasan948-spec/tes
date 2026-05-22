import 'package:flutter/material.dart';
import 'package:tes/pages/hasan_play_page.dart';
import 'package:tes/services/hasan_play_service.dart';
import 'package:tes/widgets/hasan_play_widget.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';

class HasanRekomenWidget extends StatefulWidget {
  final String videoId;
  const HasanRekomenWidget({super.key, required this.videoId});

  @override
  State<HasanRekomenWidget> createState() => _HasanRekomenWidgetState();
}

class _HasanRekomenWidgetState extends State<HasanRekomenWidget> {
  late YoutubePlayerController controller;

  @override
  void dispose() {
    controller.close();
    super.dispose();
  }

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
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: ll.length,
      itemBuilder: (context, index) {
        final data = ll[index];
        return HasanPlayWidget(
          img: data.thumbnailUrl,
          ttl: data.tittle,
          views: data.views,
          author: data.chnName,
          onTap: () {
            controller.pauseVideo();
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (_) => HasanPlayPage(
                  videoId: data.videoId,
                ),
              ),
            );
          },
        );
      },
    );
  }
}
