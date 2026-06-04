import 'package:flutter/material.dart';
import 'package:tes/pages/hasan_youVidPl_page.dart';
import 'package:tes/widgets/hasan_youVid_widget.dart';

import '../services/hasan_youVid_service.dart';

class HasanYourvidPage extends StatefulWidget {
  final String vid;
  const HasanYourvidPage({super.key, required this.vid});

  @override
  State<HasanYourvidPage> createState() => _HasanYourvidPageState();
}

class _HasanYourvidPageState extends State<HasanYourvidPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade900,
        title: Text("MeleTubee", style: TextStyle(color: Colors.white)),
        actions: [
          CircleAvatar(backgroundImage: AssetImage("assets/images/owo.jpg")),
        ],
      ),
      backgroundColor: Colors.blue.shade900,
      body: ListView.builder(
        itemCount: wnk.length,
        itemBuilder: (context, index) {
          final v = wnk[index];
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => HasanYouvidplPage(vid: v.vid, videoId: '',),
                ),
              );
            },
            child: HasanYouvidWidget(
              ttl: v.ttl,
              chn: v.chn,
              likes: v.likes,
              views: v.views,
              thum: v.thum,
            ),
          );
        },
      ),
    );
  }
}
