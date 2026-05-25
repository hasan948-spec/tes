import 'package:flutter/material.dart';
import 'package:tes/pages/hasan_channel_page.dart';
import 'package:tes/pages/rico_help_page.dart';
import 'package:tes/services/hasan_play_service.dart';

class HasanChannelWidget extends StatefulWidget {
  final String videoId;
  const HasanChannelWidget({super.key, required this.videoId});

  @override
  State<HasanChannelWidget> createState() => _HasanChannelWidgetState();
}

class _HasanChannelWidgetState extends State<HasanChannelWidget> {
  @override
  Widget build(BuildContext context) {
    final video = ll.firstWhere((cung) => cung.videoId == widget.videoId);
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => HasanChannelPage(videoId: widget.videoId),
          ),
        );
      },
      child: Row(
        children: [
          CircleAvatar(radius: 22, backgroundImage: AssetImage(video.imgChn)),
          SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                video.chnName,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 17,
                ),
              ),
              Text(
                "${video.subs} subscriber ",
                style: TextStyle(color: Colors.white70, fontSize: 12),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

// ElevatedButton(onPressed: () {
// Navigator.push(context, MaterialPageRoute(builder: (context) => ,));
// }, child: child)
