import 'package:flutter/material.dart';

import 'ManagersHome.dart';
import 'ManagersProfileMenu.dart';
import 'PlanOneDay.dart';

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
      body: Container(
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Text('Средняя школа №1', style: TextStyle(fontSize: 20)),
                ],
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PlanOneDay(),
                    settings: RouteSettings(
                      arguments: 'Понедельник'
                    ),
                  ),
                );
              },
              child: Padding(
                padding: const EdgeInsets.fromLTRB(25.0, 8.0, 8.0, 8.0),
                child: Text('Понедельник', style: TextStyle(fontSize: 20)),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PlanOneDay(),
                    settings: RouteSettings(
                        arguments: 'Вторник'
                    ),
                  ),
                );
              },
              child: Padding(
                padding: const EdgeInsets.fromLTRB(25.0, 8.0, 8.0, 8.0),
                child: Text('Вторник', style: TextStyle(fontSize: 20)),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PlanOneDay(),
                    settings: RouteSettings(
                        arguments: 'Среда'
                    ),
                  ),
                );
              },
              child: Padding(
                padding: const EdgeInsets.fromLTRB(25.0, 8.0, 8.0, 8.0),
                child: Text('Среда', style: TextStyle(fontSize: 20)),
              ),
            ),
          ],
        ),
      ),
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