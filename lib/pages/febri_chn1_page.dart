import 'package:flutter/material.dart';
import 'package:tes/pages/febri_play_page.dart';
import 'package:tes/services/febri_chn1_service.dart';

class FebriChn1Page extends StatefulWidget {
  final String vidi;
  const FebriChn1Page({super.key, required this.vidi});

  @override
  State<FebriChn1Page> createState() => _FebriChn1PageState();
}

class _FebriChn1PageState extends State<FebriChn1Page> {
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
        itemCount: vv.length,
        itemBuilder: (context, i) {
          final l = vv[i];
          return GestureDetector(
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => FebriPlayPage(vidi: widget.vidi)),
            ),
          );
        },
      ),
    );
  }
}
