import 'package:flutter/material.dart';

class CustomAppBar extends StatefulWidget implements PreferredSizeWidget {
  @override
  _TitleBarState createState() => _TitleBarState();

  @override
  Size get preferredSize => Size.fromHeight(56); // 기본 AppBar 높이
}

class _TitleBarState extends State<CustomAppBar> {
  String _selectedValue = '서현1동';

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      title: SizedBox(
        height: 48, // 아이콘과 동일한 높이
        child: DropdownButton<String>(
          value: _selectedValue,
          dropdownColor: Colors.white,
          underline: SizedBox(),
          iconSize: 30,
          style: TextStyle(fontSize: 18, color: Colors.black),
          items:
              ['서현1동', '수내동', '정자동'].map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value, style: TextStyle(fontSize: 20)),
                );
              }).toList(),
          onChanged: (String? newValue) {
            setState(() {
              _selectedValue = newValue!;
            });
          },
        ),
      ),
      actions: [
        IconButton(
          icon: Image.asset('assets/Menu.png', width: 24, height: 24),
          onPressed: () {
            print('메뉴 버튼 클릭');
          },
        ),
        IconButton(
          icon: Image.asset('assets/Notification.png', width: 24, height: 24),
          onPressed: () {
            print('알림 버튼 클릭');
          },
        ),
        IconButton(
          icon: Image.asset('assets/Search.png', width: 24, height: 24),
          onPressed: () {
            print('설정 버튼 클릭');
          },
        ),
      ],
    );
  }
}
