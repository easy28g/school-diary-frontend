import 'package:flutter/material.dart';

import 'ClassJournalForTeachers.dart';
import 'TeachersHome.dart';

class TeachersProfileMenu extends StatefulWidget{

  const TeachersProfileMenu({super.key});

  @override
  State<TeachersProfileMenu> createState() => _TeachersProfileMenuState();
}

class _TeachersProfileMenuState extends State<TeachersProfileMenu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Профиль'),
        centerTitle: true,
      ),
      body: Container(
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Text('Идентификационный номер: 0'),
                  Text('Фамилия: '),
                  Text('Имя: '),
                  Text('Отчество: '),
                  Text('Средняя школа №1'),
                  Text('Предмет: '),
                  Text('Аккаунт: ')
                ],
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
          } else if (index == 1) {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => ClassJournalForTeachers()),
            );
          }
        },
        currentIndex: 2,
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