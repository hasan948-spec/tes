import 'package:flutter/material.dart';

class FavoriteWidget extends StatelessWidget {
  final String imgchn;
  final String ttl;
  final String views;
  final String author;
  final String likes;
  final VoidCallback onTap;

  FavoriteWidget({
    super.key,
    required this.imgchn,
    required this.ttl,
    required this.views,
    required this.author,
    required this.likes,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,

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
                  image: AssetImage(imgchn),
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
                    ttl,
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
                    views,
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 12,
                    ),
                  ),

                  Text(
                    author,
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 12,
                    ),
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.favorite,
                        color: Colors.red,
                        size: 12,
                      ),
                      SizedBox(width: 4),
                      Text(
                        likes,
                        style: TextStyle(
                          color: Colors.white70,
                          fontSize: 12,
                        ),
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