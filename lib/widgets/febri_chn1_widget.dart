import 'package:flutter/material.dart';
import 'package:tes/pages/febri_play_page.dart';
import 'package:tes/widgets/febri_chn1PL_widget.dart';

import '../services/febri_chn1_service.dart';

class FebriChn1Widget extends StatefulWidget {
  final String vidi;
  const FebriChn1Widget({super.key, required this.vidi});

  @override
  State<FebriChn1Widget> createState() => _FebriChn1WidgetState();
}

class _FebriChn1WidgetState extends State<FebriChn1Widget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: ListView.builder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemCount: vv.length,
        itemBuilder: (context, index) {
          final data = vv[index];
          return FebriPlayWidget(
            img: data.thumn,
            ttl: data.ttll,
            views: data.piw,
            author: "Ruok",
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (_) => FebriPlayPage(vidi: data.vidi),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
