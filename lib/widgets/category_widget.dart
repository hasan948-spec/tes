import 'package:flutter/material.dart';
import 'package:tes/pages/favorite_page.dart';
import 'package:tes/services/favorite_service.dart';
import 'package:tes/services/play_service.dart';

class CategoryWidget extends StatefulWidget {
  const CategoryWidget({super.key});

  @override
  State<CategoryWidget> createState() => _CategoryWidgetState();
}

class _CategoryWidgetState extends State<CategoryWidget> {
  bool cc = false;

  @override
  Widget build(BuildContext context) {
    final gg = ll[0];
    return SingleChildScrollView(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
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
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    title: Text(
                      "Konten telah dis like dari anda",
                      style: TextStyle(color: Colors.white),
                    ),
                    backgroundColor: Colors.blue.shade900,
                  ),
                );
              });
            },
            child: Icon(cc ? Icons.thumb_down : Icons.thumb_down_alt_outlined),
          ),
        ],
      ),
    );
  }
}
