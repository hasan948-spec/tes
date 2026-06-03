import 'package:flutter/material.dart';
import 'package:tes/pages/hasan_myAccount_page.dart';
import 'package:tes/pages/hasan_favorite_page.dart';
import 'package:tes/pages/hasan_follow_page.dart';
import 'package:tes/pages/hasan_home_page.dart';

class HasanDashboardPage extends StatefulWidget {
  final String username;
  final String email;
  final String vid;

  const HasanDashboardPage({
    super.key,
    required this.username, required this.email, required this.vid,
  });

  @override
  State<HasanDashboardPage> createState() => _HasanDashboardPageState();
}

class _HasanDashboardPageState extends State<HasanDashboardPage> {
  int selectedIndex = 0;
  late Map<int, List<dynamic>> pages2;
  @override
  void initState() {
    super.initState();

    pages2 = {
      0: [HasanHomePage(), 'Home', Icons.home],
      1: [FavoritePage(), 'Favorite', Icons.favorite],
      2: [HasanFollowPage(), 'Follow', Icons.people],
      3: [
        HasanMyAccountPage(
          username: widget.username, email: widget.email, password: "", vid: widget.vid,
        ),
        'Akun',
        Icons.person,
      ],
    };
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.blue.shade900,
        currentIndex: selectedIndex,
        onTap: (value) {
          setState(() {
            selectedIndex = value;
          });
        },
        items: pages2.entries.map((d) {
          return BottomNavigationBarItem(
            backgroundColor: Colors.blue.shade900,
            icon: Icon(
              d.value[2],
              size: 32,
              color: Colors.black26,
            ),
            activeIcon: Icon(
              d.value[2],
              size: 32,
              color: Colors.white,
            ),
            label: d.value[1],
          );
        }).toList(),
      ),
      body: pages2[selectedIndex]![0],
    );
  }
}