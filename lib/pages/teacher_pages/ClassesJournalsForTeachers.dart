import 'package:flutter/material.dart';

import 'ChoosedClassJournal.dart';
import 'TeachersHome.dart';
import 'TeachersProfileMenu.dart';

class ClassesJournalsForTeachers extends StatefulWidget {
  @override
  State<ClassesJournalsForTeachers> createState() =>
      _ClassesJournalsForTeachersState();
}

class _ClassesJournalsForTeachersState
    extends State<ClassesJournalsForTeachers> {

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
                    builder: (context) => ChoosedClassJournal(),
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
                    builder: (context) => ChoosedClassJournal(),
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
                    builder: (context) => ChoosedClassJournal(),
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
              MaterialPageRoute(builder: (context) => TeachersHome()),
            );
          } else if (index == 2) {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => TeachersProfileMenu()),
            );
          }
        },
        currentIndex: 1,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.format_list_numbered),
            label: 'Расписание',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.fact_check),
            label: 'Журнал',
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
