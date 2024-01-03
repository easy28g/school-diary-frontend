import 'package:flutter/material.dart';

import 'AddSchool.dart';
import 'AdminsProfileMenu.dart';
import 'ListSchool.dart';

class AdminsHome extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _AdminsHomeState();
}

class _AdminsHomeState extends State<AdminsHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('VibeTime Күндөлүк'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 55.0),
        child: Column(
          children: [
            // Первая строка
            Row(
              children: [
                // Первая колонка
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(8.0),
                    // width: 20.0,
                    height: 70,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => AddSchool(),
                          ),
                        );
                      },
                      child: Text('Добавить школу'),
                    ),
                  ),
                ),
                // Вторая колонка
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(8.0),
                    // width: 20.0,
                    height: 70,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ListSchool()
                          ),
                        );
                      },
                      child: Text('Список школ'),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          if (index == 1) {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => AdminsProfileMenu()),
            );
          }
        },
        currentIndex: 0,
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