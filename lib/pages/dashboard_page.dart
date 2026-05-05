import 'package:flutter/material.dart';
import 'package:tes/pages/akun_page.dart';
import 'package:tes/pages/favorite_page.dart';
import 'package:tes/pages/follow_page.dart';
import 'package:tes/pages/home_page.dart';


class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  int selectedIndex = 0;
  List<Widget> pages = [
    HomePage(),
    FavoritePage(),
    FollowPage(),
    AkunPage(),
  ];

  Map<int, List<dynamic>> pages2 = {
    0: [HomePage(), 'Home', Icons.home],
    1: [FavoritePage(), 'Favorite', Icons.favorite],
    2: [FollowPage(), 'follow', Icons.people],
    3: [AkunPage(), 'Akun', Icons.person],
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
