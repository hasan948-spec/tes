import 'package:flutter/material.dart';

class HasanVideoWidget extends StatelessWidget {
  final String img;
  final String view;
  final String sbtl;
  final String favor;
  final String chn;

  const HasanVideoWidget({
    super.key,
    required this.img,
    required this.view,
    required this.sbtl,
    required this.favor,
    required this.chn,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: Row(
        children: [
          Container(
            width: 140,
            height: 80,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              image: DecorationImage(image: AssetImage(img), fit: BoxFit.cover),
            ),
          ),
          SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  sbtl,
                  style: TextStyle(
                    color: Colors.white, fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  chn,
                  style: TextStyle(color: Colors.white70, fontSize: 12),
                ),
                Text(
                  "${view} view",
                  maxLines: 2,
                  style: TextStyle(color: Colors.white70, fontSize: 12),
                ),
                Row(
                  children: [
                    Icon(Icons.favorite, color: Colors.red, size: 14),
                    SizedBox(width: 3),
                    Text(
                      favor,
                      style: TextStyle(color: Colors.white70, fontSize: 12),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
