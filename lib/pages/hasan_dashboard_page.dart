import 'package:flutter/material.dart';
import 'package:tes/pages/hasan_akun_page.dart';
import 'package:tes/pages/hasan_favorite_page.dart';
import 'package:tes/pages/hasan_follow_page.dart';
import 'package:tes/pages/hasan_home_page.dart';


class HasanDashboardPage extends StatefulWidget {
  const HasanDashboardPage({super.key});

  @override
  State<HasanDashboardPage> createState() => _HasanDashboardPageState();
}

class _HasanDashboardPageState extends State<HasanDashboardPage> {
  int selectedIndex = 0;
  List<Widget> pages = [
    HasanHomePage(),
    FavoritePage(),
    HasanFollowPage(),
    HasanAkunPage(),
  ];

  Map<int, List<dynamic>> pages2 = {
    0: [HasanHomePage(), 'Home', Icons.home],
    1: [FavoritePage(), 'Favorite', Icons.favorite],
    2: [HasanFollowPage(), 'follow', Icons.people],
    3: [HasanAkunPage(), 'Akun', Icons.person],
  };
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.blue.shade900,
        elevation: 5,
        currentIndex: selectedIndex,
        onTap: (value) {
          setState(() {
            selectedIndex = value;
          });
        },
        items: pages2.entries.map((d) {
          return BottomNavigationBarItem(
            backgroundColor: Colors.blue.shade900,
            icon: Icon(d.value[2], size: 32,color: Colors.black26),
            label: d.value[1],
            activeIcon: Icon(d.value[2], size: 32, color: Colors.white,),
          );
        }).toList(),
      ),
      body: pages2[selectedIndex]![0],
    );
  }
}
