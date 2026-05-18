import 'package:flutter/material.dart';
import 'package:tes/services/follow_service.dart';
import 'package:tes/widgets/drawer_widget.dart';

class FollowPage extends StatefulWidget {
  const FollowPage({super.key});

  @override
  State<FollowPage> createState() => _FollowPageState();
}

class _FollowPageState extends State<FollowPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0019A7),
      appBar: AppBar(
        backgroundColor: const Color(0xFF0019A7),
        elevation: 0,
        title: Text(
          "Follow",
          style: TextStyle(
            color: Colors.white,
            fontSize: 28,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      drawer: DrawerWidget(),
      body: ListView.builder(
        itemCount: nyr.length,
        itemBuilder: (context, index) {
          final user = nyr[index];

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
                        "${user.jmlflw}",
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
                            nyr.removeAt(index);
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
