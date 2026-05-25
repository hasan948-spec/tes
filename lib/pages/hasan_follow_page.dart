import 'package:flutter/material.dart';
import 'package:tes/services/hasan_follow_service.dart';
import 'package:tes/widgets/Rico_drawer_widget.dart';

class HasanFollowPage extends StatefulWidget {
  const HasanFollowPage({super.key});

  @override
  State<HasanFollowPage> createState() => _HasanFollowPageState();
}

class _HasanFollowPageState extends State<HasanFollowPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade900,
        elevation: 0,
        title: Text(
          "Follow",
          style: TextStyle(
            color: Colors.white,
            fontSize: 28,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [CircleAvatar(backgroundImage: AssetImage("assets/images/owo.jpg"),)],
      ),
      backgroundColor: Colors.blue.shade900,
      drawer: RicoDrawerWidget(),
      body: ListView.builder(
        itemCount: nyr.length,
        itemBuilder: (context, x) {
          final user = nyr[x];
          return Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 14),
            child: Row(
              children: [
                CircleAvatar(radius: 38, backgroundImage: AssetImage(user.img)),
                SizedBox(width: 16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        user.name,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 4),
                      Text(
                        "${user.jmlflw} subscribe",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(height: 2),
                      Row(
                        children: [
                          Icon(
                            Icons.favorite,
                            color: Colors.pink,
                            size: 18,
                          ),
                          SizedBox(width: 4),
                          Text(
                            "${user.jmlhlk} like",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 8),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            nyr.removeAt(x);
                          });
                        },
                        child: Container(
                          width: 140,
                          height: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            border: Border.all(
                              color: Colors.lightBlueAccent,
                              width: 2,
                            ),
                          ),
                          child: Center(
                            child: Text(
                              "Followed",
                              style: TextStyle(
                                color: Colors.lightBlueAccent,
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
