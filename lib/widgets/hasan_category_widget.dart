import 'package:flutter/material.dart';
import 'package:tes/pages/hasan_favorite_page.dart';
import 'package:tes/services/hasan_favorite_service.dart';
import 'package:tes/services/hasan_play_service.dart';

import '../models/hasan_follow_model.dart';
import '../pages/hasan_follow_page.dart';
import '../services/hasan_follow_service.dart';

class CategoryWidget extends StatefulWidget {
  final String videoId;
  const CategoryWidget({super.key, required this.videoId});

  @override
  State<CategoryWidget> createState() => _CategoryWidgetState();
}

class _CategoryWidgetState extends State<CategoryWidget> {
  bool isheck = false;
  bool prlk = false;
  bool cpyrg = false;
  bool brbhy = false;
  bool cc = false;

  @override
  Widget build(BuildContext context) {
    final video = ll.firstWhere((cung) => cung.videoId == widget.videoId);
    final gg = ll[0];
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(width: 5),
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
                MaterialPageRoute(builder: (_) => HasanFollowPage()),
              );
            },
            child: Text("Follow"),
          ),
          SizedBox(width: 5),
          ElevatedButton(
            onPressed: () {
              if (!favorite.contains(gg)) {
                favorite.add(gg);
              }
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => FavoritePage()),
              );
            },
            child: Row(
              children: [
                Icon(Icons.thumb_up_alt_sharp),
                SizedBox(width: 5),
                Text(gg.likes),
              ],
            ),
          ),
          SizedBox(width: 5),
          ElevatedButton(
            onPressed: () {
              setState(() {
                cc = !cc;
              });
            },
            child: Icon(cc ? Icons.thumb_down : Icons.thumb_down_alt_outlined),
          ),
          SizedBox(width: 5),
          ElevatedButton(
            onPressed: () {
              showModalBottomSheet(
                context: context,
                builder: (context) {
                  return StatefulBuilder(
                    builder: (context, setState) {
                      return SizedBox(
                        width: double.infinity,
                        height: 500,
                        child: Column(
                          children: [
                            SizedBox(height: 20),
                            Text(
                              "Laporkan",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                            Divider(color: Colors.black),
                            CheckboxListTile(
                              title: Text("Konten Sensitif"),
                              value: isheck,
                              onChanged: (value) {
                                if (value == null) return;
                                {
                                  setState(() {
                                    isheck = value;
                                  });
                                }
                              },
                            ),
                            CheckboxListTile(
                              title: Text("perilaku buruk"),
                              value: prlk,
                              onChanged: (value) {
                                if (value == null) return;
                                {
                                  setState(() {
                                    prlk = value;
                                  });
                                }
                              },
                            ),
                            CheckboxListTile(
                              title: Text("adegan berbahaya"),
                              value: cpyrg,
                              onChanged: (value) {
                                if (value == null) return;
                                {
                                  setState(() {
                                    cpyrg = value;
                                  });
                                }
                              },
                            ),
                            CheckboxListTile(
                              title: Text("mendukung terorisme"),
                              value: brbhy,
                              onChanged: (value) {
                                if (value == null) return;
                                {
                                  setState(() {
                                    brbhy = value;
                                  });
                                }
                              },
                            ),
                            SizedBox(width: 500),
                            Container(
                              width: 400,
                              height: 50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: Colors.grey,
                              ),
                              child: ElevatedButton(
                                onPressed: () {
                                  showDialog(
                                    context: context,
                                    builder: (context) => AlertDialog(
                                      title: Text("Peringatan!"),
                                      actions: [
                                        Text(
                                          "Jika kalian ingin melaporkan mohon membuat laporan fakta",
                                        ),
                                        TextButton(
                                          onPressed: () {
                                            showDialog(
                                              context: context,
                                              builder: (context) => AlertDialog(
                                                title: Text(
                                                  "Laporan telah dikirim",
                                                ),
                                              ),
                                            );
                                          },
                                          child: Text("Yes"),
                                        ),
                                        TextButton(
                                          onPressed: () {
                                            Navigator.pop(context);
                                          },
                                          child: Text("Batal"),
                                        ),
                                      ],
                                    ),
                                  );
                                },
                                child: Text("Berikutnya"),
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  );
                },
              );
            },
            child: Row(
              children: [
                Icon(Icons.flag),
                SizedBox(width: 8),
                Text("Laporkan"),
              ],
            ),
          ),
          SizedBox(width: 5),
          ElevatedButton(
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) => AlertDialog(title: Text("Share"),),
              );
            },
            child: Icon(Icons.share),
          ),
        ],
      ),
    );
  }
}
