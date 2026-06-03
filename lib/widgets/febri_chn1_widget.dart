import 'package:flutter/material.dart';

class FebriChn1Widget extends StatefulWidget {
  final String thum;
  final String title;
  final String desk;
  final String view;
  final String like;
  final String subs;
  final String chname;
  final String imgchn;
  final VoidCallback onTap;
  const FebriChn1Widget({
    super.key,
    required this.thum,
    required this.title,
    required this.desk,
    required this.view,
    required this.like,
    required this.subs,
    required this.chname,
    required this.imgchn,
    required this.onTap,
  });

  @override
  State<FebriChn1Widget> createState() => _FebriChn1WidgetState();
}

class _FebriChn1WidgetState extends State<FebriChn1Widget> {
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
              image: DecorationImage(image: AssetImage(widget.imgchn), fit: BoxFit.cover),
            ),
          ),
          SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.title,
                  style: TextStyle(
                    color: Colors.white, fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  widget.chname,
                  style: TextStyle(color: Colors.white70, fontSize: 12),
                ),
                Text(
                  "${widget.view} view",
                  maxLines: 2,
                  style: TextStyle(color: Colors.white70, fontSize: 12),
                ),
                Row(
                  children: [
                    Icon(Icons.favorite, color: Colors.red, size: 14),
                    SizedBox(width: 3),
                    Text(
                      widget.like,
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
