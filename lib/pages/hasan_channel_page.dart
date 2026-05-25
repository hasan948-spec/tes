import 'package:flutter/material.dart';
import 'package:tes/models/hasan_follow_model.dart';
import 'package:tes/pages/hasan_follow_page.dart';
import 'package:tes/services/hasan_follow_service.dart';
import 'package:tes/widgets/hasan_rekomen_widget.dart';
import '../services/hasan_play_service.dart';

class HasanChannelPage extends StatefulWidget {
  final String videoId;
  const HasanChannelPage({super.key, required this.videoId});

  @override
  State<HasanChannelPage> createState() => _HasanChannelPageState();
}

class _HasanChannelPageState extends State<HasanChannelPage> {
  @override
  Widget build(BuildContext context) {
    final gelo = ll.firstWhere((cung) => cung.videoId == widget.videoId);
    return Scaffold(
      backgroundColor: Colors.blue.shade900,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 350,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.purple.shade500, Colors.white],
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 150,
                    height: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(150),
                      image: DecorationImage(
                        image: AssetImage(gelo.imgChn),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Text(
                    gelo.chnName,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                  ),
                ],
              ),
            ),
            SizedBox(height: 25),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Text(
                      gelo.likes,
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 35,
                      ),
                    ),
                    Text("Likes",style: TextStyle(color: Colors.grey,fontSize: 20),)
                  ],
                ),
                Container(height: 60, width: 2, color: Colors.grey),
                Column(
                  children: [
                    Text(
                      gelo.subs,
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 35,
                      ),
                    ),
                    Text("Followers",style: TextStyle(color: Colors.grey,fontSize: 20),)
                  ],
                ),
                Container(height: 60, width: 2, color: Colors.grey),
                Column(
                  children: [
                    Text(
                      gelo.views,
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 35,
                      ),
                    ),
                    Text("Views",style: TextStyle(color: Colors.grey,fontSize: 20),)
                  ],
                ),
              ],
            ),
            SizedBox(height: 25),
            SizedBox(
              width: 350,
              height: 50,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue.shade500,
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadiusGeometry.circular(8),
                  ),
                ),
                onPressed: () {
                  nyr.add(
                    HasanFollowModel(
                      img: gelo.imgChn,
                      name: gelo.chnName,
                      jmlhlk: gelo.likes,
                      jmlflw: gelo.subs,
                    ),
                  );
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HasanFollowPage()),
                  );
                },
                child: Text("Follow", style: TextStyle(fontSize: 25)),
              ),
            ),
            SizedBox(height: 50),
            Text(
              "Video",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Colors.white,
              ),
            ),
            Divider(),
            SizedBox(
              width: 420,
              child: HasanRekomenWidget(videoId: widget.videoId)
            )
          ],
        ),
      ),
    );
  }
}
