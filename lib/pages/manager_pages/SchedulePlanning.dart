import 'package:flutter/material.dart';

import 'ManagersHome.dart';
import 'ManagersProfileMenu.dart';

class SchedulePlanning extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _SchedulePlanningState();
}

class _SchedulePlanningState extends State<SchedulePlanning> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('VibeTime Күндөлүк'),
        centerTitle: true,
      ),
      body: Text('Planning'),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          if (index == 0) {
            Navigator.pushReplacement(
              context,
            MaterialPageRoute(builder: (context) => ManagersHome()),
            );
          } else if (index == 2) {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => ManagersProfileMenu()),
            );
          }
        },
        currentIndex: 1,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.add_home_work_rounded),
            label: 'Главная',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.fact_check),
            label: 'Планирование',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Профиль',
          ),
        ],
      ),
    );
  }
}