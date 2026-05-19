import 'package:flutter/material.dart';
import 'package:tes/models/follow_model.dart';
import 'package:tes/pages/follow_page.dart';
import 'package:tes/services/follow_service.dart';
import 'package:tes/services/play_service.dart';

class ChannelWidget extends StatefulWidget {
  const ChannelWidget({super.key});

  @override
  State<ChannelWidget> createState() => _ChannelWidgetState();
}

class _ChannelWidgetState extends State<ChannelWidget> {
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
              FollowModel(
                name: video.chnName,
                img: video.imgChn,
                jmlflw: video.views,
                jmlhlk: video.likes,
              ),
            );
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => FollowPage(),
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
