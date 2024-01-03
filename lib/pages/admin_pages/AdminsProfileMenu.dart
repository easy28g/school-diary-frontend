import 'package:flutter/material.dart';

import 'AdminsHome.dart';

class AdminsProfileMenu extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _AdminsProfileMenuState();
}

class _AdminsProfileMenuState extends State<AdminsProfileMenu> {
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
                  Text('Идентификационный номер: 0'),
                  Text('Фамилия: '),
                  Text('Имя: '),
                  Text('Отчество: '),
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
              MaterialPageRoute(builder: (context) => AdminsHome()),
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
            icon: Icon(Icons.person),
            label: 'Профиль',
          ),
        ],
      ),
    );
  }
}