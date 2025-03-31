import 'package:flutter/material.dart';
import '../widgets/navigator.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String _selectedValue = '서현1동'; // 기본값

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: SizedBox(
          height: 48, // 아이콘 버튼과 동일한 높이
          child: DropdownButton<String>(
            value: _selectedValue, // 선택된 값 반영
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
            icon: Icon(Icons.search, color: Colors.black),
            onPressed: () {
              print('검색 버튼 클릭');
            },
          ),
          IconButton(
            icon: Icon(Icons.notifications, color: Colors.black),
            onPressed: () {
              print('알림 버튼 클릭');
            },
          ),
          IconButton(
            icon: Icon(Icons.settings, color: Colors.black),
            onPressed: () {
              print('설정 버튼 클릭');
            },
          ),
        ],
      ),
      bottomNavigationBar: CustomNavigationBar(),
    );
  }
}
