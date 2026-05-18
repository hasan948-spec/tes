import 'package:flutter/material.dart';
import 'package:tes/pages/play_page.dart';
import 'package:tes/services/play_service.dart';
import 'package:tes/widgets/drawer_widget.dart';
import 'package:tes/widgets/video_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade900,

      appBar: AppBar(
        backgroundColor: Colors.blue.shade900,
        title: const Text(
          "MeleTube",
          style: TextStyle(color: Colors.white),
        ),
      ),
      drawer: DrawerWidget(),
      body: ListView.builder(
        itemCount: ll.length,
        itemBuilder: (context, index) {
          final v = ll[index];
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => PlayPage(
                    videoId: v.videoId,
                  ),
                ),
              );
            },
            child: VideoWidget(
              img: v.thumbnailUrl,
              sbtl: v.tittle,
              view: v.views,
              favor: v.likes,
              chn: v.author,
            ),
          );
        },
      ),
    );
  }
}