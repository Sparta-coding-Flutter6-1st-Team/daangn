import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        bottomNavigationBar: CustomNavigationBar(),
      ),
    );
  }
}

class CustomNavigationBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 8),
      decoration: BoxDecoration(color: Colors.white, boxShadow: [
        BoxShadow(color: Colors.black12, blurRadius: 4)
      ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _navItem(Icons.home, "홈"),
          _navItem(Icons.location_on, "동네생활"),
          _navItem(Icons.explore, "내 근처"),
          _navItem(Icons.chat, "채팅"),
          _navItem(Icons.person, "나의 당근"),
        ],
      ),
    );
  }

  Widget _navItem(IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(icon, size: 24, color: Colors.black),
        SizedBox(height: 4),
        Text(
          label,
          style: TextStyle(fontSize: 10, color: Colors.black),
        ),
      ],
    );
  }
}