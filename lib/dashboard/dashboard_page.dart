
import 'package:flutter/material.dart';
import 'package:mobile_banking/dashboard/fab_bottom_app_bar.dart';
import 'package:mobile_banking/profile_page.dart';
import 'package:mobile_banking/statistics_page.dart';

import '../home/home_page.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  int _selectedTab = 0;

  List<Widget> tabs = [
    HomePage(),
    StatisticsPage(),
    StatisticsPage(),
    ProfilePage(),
  ];

  void _selectTab(int index) {
    setState(() {
      _selectedTab = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: IndexedStack(
          index: _selectedTab,
          children: tabs,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.search),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: FABBottomAppBar(
        notchedShape: const CircularNotchedRectangle(),
        backgroundColor: Colors.white,
        onTabSelected: _selectTab,
        selectedColor: Colors.blue,
        color: Colors.grey,
        items: [
          FABBottomAppBarItem(iconData: Icons.home, text: 'This'),
          FABBottomAppBarItem(iconData: Icons.pie_chart, text: 'Is'),
          FABBottomAppBarItem(iconData: Icons.bar_chart, text: 'Bottom'),
          FABBottomAppBarItem(iconData: Icons.person, text: 'Bar'),
        ],
      ),
    );
  }
}