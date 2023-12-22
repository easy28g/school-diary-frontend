import 'package:flutter/material.dart';

import 'ManagersHome.dart';
import 'SchedulePlanning.dart';

class ManagersProfileMenu extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ManagersProfileMenuState();
}

class _ManagersProfileMenuState extends State<ManagersProfileMenu> {
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
              MaterialPageRoute(builder: (context) => ManagersHome()),
            );
          } else if (index == 1) {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => SchedulePlanning()),
            );
          }
        },
        currentIndex: 2,
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
