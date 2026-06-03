import 'package:flutter/material.dart';

class HasanYouvidplWidget extends StatefulWidget {
  final String ttl;
  final String chn;
  final String likes;
  final String views;
  final String thum;
  const HasanYouvidplWidget({
    super.key,
    required this.ttl,
    required this.chn,
    required this.likes,
    required this.views,
    required this.thum,
  });

  @override
  State<HasanYouvidplWidget> createState() => _HasanYouvidplWidgetState();
}

class _HasanYouvidplWidgetState extends State<HasanYouvidplWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 12),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 120,
            height: 70,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                image: AssetImage("assets/images/owo.jpg"),
                fit: BoxFit.cover,
              ),
            ),
            child: Icon(Icons.play_circle_fill, color: Colors.white),
          ),
          SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.ttl,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  widget.views,
                  style: TextStyle(color: Colors.white70, fontSize: 12),
                ),
                Text(
                  widget.chn,
                  style: TextStyle(color: Colors.white70, fontSize: 12),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
