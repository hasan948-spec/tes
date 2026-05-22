import 'package:flutter/material.dart';
import 'package:tes/pages/hasan_play_page.dart';
import 'package:tes/services/hasan_play_service.dart';
import 'package:tes/widgets/hasan_drawer_widget.dart';
import 'package:tes/widgets/hasan_video_widget.dart';

class HasanHomePage extends StatefulWidget {
  const HasanHomePage({super.key});

  @override
  State<HasanHomePage> createState() => _HasanHomePageState();
}

class _HasanHomePageState extends State<HasanHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade900,
        title: Text("MeleTubee", style: TextStyle(color: Colors.white)),
      ),
      backgroundColor: Colors.blue.shade900,
      drawer: HasanDrawerWidget(),
      body: ListView.builder(
        itemCount: ll.length,
        itemBuilder: (context, index) {
          final v = ll[index];
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => HasanPlayPage(videoId: v.videoId),
                ),
              );
            },
            child: HasanVideoWidget(
              img: v.thumbnailUrl,
              sbtl: v.tittle,
              view: v.views,
              favor: v.likes,
              chn: v.chnName,
            ),
          );
        },
      ),
    );
  }
}
