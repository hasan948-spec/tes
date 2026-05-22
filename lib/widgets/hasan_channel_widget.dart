import 'package:flutter/material.dart';
import 'package:tes/models/hasan_follow_model.dart';
import 'package:tes/pages/hasan_follow_page.dart';
import 'package:tes/services/hasan_follow_service.dart';
import 'package:tes/services/hasan_play_service.dart';

class HasanChannelWidget extends StatefulWidget {
  const HasanChannelWidget({super.key});

  @override
  State<HasanChannelWidget> createState() => _HasanChannelWidgetState();
}

class _HasanChannelWidgetState extends State<HasanChannelWidget> {
  @override
  Widget build(BuildContext context) {
    final video = ll[0];
    return Row(
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
              video.chnName,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 17,
              ),
            ),
            Text(
              "${video.subs} subscriber " ,
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
              HasanFollowModel(
                name: video.chnName,
                img: video.imgChn,
                jmlflw: video.views,
                jmlhlk: video.likes,
              ),
            );
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => HasanFollowPage(),
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
    );
  }
}
