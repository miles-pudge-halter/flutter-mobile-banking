import 'package:flutter/material.dart';
import 'package:mobile_banking/breakdown/breakdown_page.dart';
import 'package:mobile_banking/dashboard/fab_bottom_app_bar.dart';
import 'package:mobile_banking/profile_page.dart';
import 'package:mobile_banking/statistics/statistics_page.dart';

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
    BreakdownPage(),
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
        child: Container(
          width: 60,
          height: 60,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: Colors.white, width: 2),
            gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              colors: [Colors.blueAccent.shade700, Colors.blue.shade200]
            )
          ),
          child: const Icon(Icons.search_outlined, size: 30,),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: FABBottomAppBar(
        notchedShape: const CircularNotchedRectangle(),
        backgroundColor: Colors.white,
        onTabSelected: _selectTab,
        selectedColor: [Colors.blueAccent.shade700, Colors.blue.shade200],
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
