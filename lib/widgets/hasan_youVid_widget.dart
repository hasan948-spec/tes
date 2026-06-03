import 'package:flutter/material.dart';

class HasanYouvidWidget extends StatefulWidget {
  final String ttl;
  final String chn;
  final String likes;
  final String views;
  final String thum;
  const HasanYouvidWidget({
    super.key,
    required this.ttl,
    required this.chn,
    required this.likes,
    required this.views,
    required this.thum,
  });

  @override
  State<HasanYouvidWidget> createState() => _HasanYouvidWidgetState();
}

class _HasanYouvidWidgetState extends State<HasanYouvidWidget> {
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
              image: DecorationImage(image: AssetImage(widget.thum), fit: BoxFit.cover),
            ),
          ),
          SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.ttl,
                  style: TextStyle(
                    color: Colors.white, fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  widget.chn,
                  style: TextStyle(color: Colors.white70, fontSize: 12),
                ),
                Text(
                  "${widget.views} view",
                  maxLines: 2,
                  style: TextStyle(color: Colors.white70, fontSize: 12),
                ),
                Row(
                  children: [
                    Icon(Icons.favorite, color: Colors.red, size: 14),
                    SizedBox(width: 3),
                    Text(
                      widget.likes,
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
