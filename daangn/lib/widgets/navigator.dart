import 'package:flutter/material.dart';
import '../widgets/models/navitagor_items.dart';

class CustomNavigationBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 8),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 4)],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _navItem(NavitagationItems(Icons.home, "홈")),
          _navItem(NavitagationItems(Icons.location_on, "동네생활")),
          _navItem(NavitagationItems(Icons.explore, "내 근처")),
          _navItem(NavitagationItems(Icons.chat, "채팅")),
          _navItem(NavitagationItems(Icons.person, "나의 당근")),
        ],
      ),
    );
  }

  Widget _navItem(NavitagationItems item) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(item.icon, size: 24, color: Colors.black),
        SizedBox(height: 4),
        Text(item.label, style: TextStyle(fontSize: 10, color: Colors.black)),
      ],
    );
  }
}
