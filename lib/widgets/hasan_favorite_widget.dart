import 'package:flutter/material.dart';

class HasanFavoriteWidget extends StatefulWidget {
  final String thumb;
  final String ttl;
  final String views;
  final String author;
  final String likes;
  final VoidCallback onTap;
  const HasanFavoriteWidget({
    super.key,
    required this.thumb,
    required this.ttl,
    required this.views,
    required this.author,
    required this.likes,
    required this.onTap,
  });

  @override
  State<HasanFavoriteWidget> createState() => _HasanFavoriteWidgetState();
}

class _HasanFavoriteWidgetState extends State<HasanFavoriteWidget> {
  bool liked = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: Container(
        margin: EdgeInsets.all(20),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 160,
              height: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                image: DecorationImage(
                  image: AssetImage(widget.thumb),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.ttl,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                    ),
                  ),
                  SizedBox(height: 4),
                  Text(
                    widget.views,
                    style: TextStyle(color: Colors.white70, fontSize: 12),
                  ),
                  Text(
                    widget.author,
                    style: TextStyle(color: Colors.white70, fontSize: 12),
                  ),
                  Row(
                    children: [
                      Icon(Icons.favorite, color: Colors.red, size: 12),
                      SizedBox(width: 4),
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
      ),
    );
  }
}