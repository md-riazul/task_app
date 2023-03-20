import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:task_app/design_page.dart';
import 'package:task_app/graph_page.dart';
import 'package:task_app/homepage.dart';
import 'package:task_app/setting_page.dart';

class CustomNavBar extends StatefulWidget {
  const CustomNavBar({super.key});

  @override
  State<CustomNavBar> createState() => _CustomNavBarState();
}

class _CustomNavBarState extends State<CustomNavBar> {
  List<Widget> pages = [HomePage(), GraphPage(), DesignPage(), SettingPage()];
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.green,
        iconSize: 28,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        onTap: (value) {
          setState(() {
            currentIndex = value;
          });
        },
        currentIndex: currentIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.auto_graph),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.design_services),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: '',
          ),
        ],
      ),
    );
  }
}
