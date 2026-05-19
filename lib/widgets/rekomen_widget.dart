import 'package:flutter/material.dart';
import 'package:tes/pages/play_page.dart';
import 'package:tes/services/play_service.dart';
import 'package:tes/widgets/play_widget.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';

class RekomenWidget extends StatefulWidget {
  final String videoId;
  const RekomenWidget({super.key, required this.videoId});

  @override
  State<RekomenWidget> createState() => _RekomenWidgetState();
}

class _RekomenWidgetState extends State<RekomenWidget> {
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
        return PlayWidget(
          img: data.thumbnailUrl,
          ttl: data.tittle,
          views: data.views,
          author: data.chnName,
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
    );
  }
}
