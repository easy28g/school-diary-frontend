import 'package:flutter/material.dart';

import 'TeachersHome.dart';
import 'TeachersProfileMenu.dart';

class ClassJournalForTeachers extends StatefulWidget {
  @override
  State<ClassJournalForTeachers> createState() =>
      _ClassJournalForTeachersState();
}

class _ClassJournalForTeachersState extends State<ClassJournalForTeachers> {
  List<String> names = ['Иванов И.', 'Петрова А.', 'Сидоров С.'];
  List<List<String>> grades = [
    ['3', '', '', '', 'нб', 'нб'],
    ['3', '', '', '', '', 'нб'],
    ['3', '', '4', 'нб', '', 'нб'],
  ];

  void addRow() {
    setState(() {
      names.add('Новый ученик');
      grades.add(['5', '5', '5', '5', '5', '5']);
    });
  }

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
                  Text('Средняя школа №1'),
                  Text('Учебный год: 2023-2024'),
                  Text('7A'),
                ],
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: DataTable(
                  columns: [
                    DataColumn(label: Text('Имя ученика')),
                    DataColumn(label: Text('Пн')),
                    DataColumn(label: Text('Вт')),
                    DataColumn(label: Text('Ср')),
                    DataColumn(label: Text('Чт')),
                    DataColumn(label: Text('Пт')),
                    DataColumn(label: Text('Сб')),
                  ],
                  rows: List.generate(
                    names.length,
                        (index) => DataRow(
                      cells: [
                        DataCell(Text(names[index])),
                        ...grades[index]
                            .map((grade) => DataCell(Text(grade))),
                      ],
                    ),
                  ),
                ),
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
      floatingActionButton: FloatingActionButton(
        onPressed: addRow,
        child: Icon(Icons.add),
      ),
    );
  }
}
