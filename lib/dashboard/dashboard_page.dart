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
        selectedColor: [Colors.blue.shade700, Colors.blue.shade200],
        color: [Colors.grey.shade700, Colors.grey.shade700],
        items: [
          FABBottomAppBarItem(
            selectedIcon: Icons.home,
            icon: Icons.home_outlined,
            text: 'This',
          ),
          FABBottomAppBarItem(
            selectedIcon: Icons.pie_chart,
            icon: Icons.pie_chart_outline,
            text: 'Is',
          ),
          FABBottomAppBarItem(
            selectedIcon: Icons.bar_chart,
            icon: Icons.bar_chart_outlined,
            text: 'Bottom',
          ),
          FABBottomAppBarItem(
            selectedIcon: Icons.person,
            icon: Icons.person_outline,
            text: 'Bar',
          ),
        ],
      ),
    );
  }
}
