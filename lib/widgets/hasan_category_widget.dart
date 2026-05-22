import 'package:flutter/material.dart';
import 'package:tes/pages/hasan_favorite_page.dart';
import 'package:tes/services/hasan_favorite_service.dart';
import 'package:tes/services/hasan_play_service.dart';

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
              });
            },
            child: Icon(cc ? Icons.thumb_down : Icons.thumb_down_alt_outlined),
          ),
          SizedBox(width: 5),
        ],
      ),
    );
  }
}

//showModalBottomSheet(
//   context: context,
//   builder: (context) {
//     return SizedBox(
//       width: double.infinity,
//       height: 500,
//       child: Padding(
//         padding: const EdgeInsets.all(10),
//         child: Column(
//           children: [
//             Container(
//               width: 100,
//               height: 4,
//               decoration: BoxDecoration(
//                 color: Colors.grey,
//                 borderRadius: BorderRadius.circular(8),
//               ),
//             ),
//             Text(
//               inf[x].ttl,
//               style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
//             ),
//             SizedBox(height: 15),
//             Text(inf[x].dsc),
//             SizedBox(height: 20,),
//             Image.asset(inf[x].img,height: 250,),
//           ],
//         ),
//       ),
//     );
// },
//);
