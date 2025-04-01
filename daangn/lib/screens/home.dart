import 'package:flutter/material.dart';
import '../widgets/title_bar.dart';
import '../widgets/navigator.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      bottomNavigationBar: CustomNavigationBar(),
    );
  }
}
