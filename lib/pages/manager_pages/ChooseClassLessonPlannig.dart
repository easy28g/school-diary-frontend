import 'package:flutter/material.dart';

import 'ManagersHome.dart';
import 'ManagersProfileMenu.dart';
import 'SchedulePlanning.dart';

class ChooseClassLessonPlanning extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ChooseClassLessonPlanningState();
}

class _ChooseClassLessonPlanningState extends State<ChooseClassLessonPlanning> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('VibeTime журнал'),
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
                  Text('Учебный год: 2023-2024', style: TextStyle(fontSize: 20)),
                ],
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SchedulePlanning(),
                  ),
                );
              },
              child: Padding(
                padding: const EdgeInsets.fromLTRB(25.0, 8.0, 8.0, 8.0),
                child: Text('Класс 10А', style: TextStyle(fontSize: 20)),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SchedulePlanning(),
                  ),
                );
              },
              child: Padding(
                padding: const EdgeInsets.fromLTRB(25.0, 8.0, 8.0, 8.0),
                child: Text('Класс 10Б', style: TextStyle(fontSize: 20)),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SchedulePlanning(),
                  ),
                );
              },
              child: Padding(
                padding: const EdgeInsets.fromLTRB(25.0, 8.0, 8.0, 8.0),
                child: Text('Класс 10В', style: TextStyle(fontSize: 20)),
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