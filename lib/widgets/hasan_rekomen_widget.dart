import 'package:flutter/material.dart';
import 'package:tes/pages/hasan_play_page.dart';
import 'package:tes/services/hasan_play_service.dart';
import 'package:tes/widgets/hasan_play_widget.dart';

class HasanRekomenWidget extends StatefulWidget {
  final String videoId;

  const HasanRekomenWidget({super.key, required this.videoId,});

  @override
  State<HasanRekomenWidget> createState() => _HasanRekomenWidgetState();
}

class _HasanRekomenWidgetState
    extends State<HasanRekomenWidget> {

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