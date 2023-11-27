import 'package:flutter/material.dart';

import 'AddStudent.dart';
import 'AddTeacher.dart';

class ManagersHome extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ManagersHomeState();
}

class _ManagersHomeState extends State<ManagersHome> {
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
                            builder: (context) => AddStudent(),
                          ),
                        );
                      },
                      child: Text('Добавить ученика'),
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
                              builder: (context) => AddTeacher()
                          ),
                        );
                      },
                      child: Text('Добавить учителя'),
                    ),
                  ),
                ),
              ],
            ),
            // Вторая строка
            Row(
              children: [
                // Третья колонка
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(8.0),
                    // width: 20.0,
                    height: 70,
                    child: ElevatedButton(
                      onPressed: () {
                        // Ваше действие при нажатии на кнопку
                      },
                      child: Text('Список классов'),
                    ),
                  ),
                ),
                // Четвертая колонка
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(8.0),
                    // width: 20.0,
                    height: 70,
                    child: ElevatedButton(
                      onPressed: () {
                        // Ваше действие при нажатии на кнопку
                      },
                      child: Text('Список Учителей'),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(8.0),
                    height: 70,
                    child: ElevatedButton(
                      onPressed: () {
                        // Ваше действие при нажатии на кнопку
                      },
                      child: Text('Добавить предмет'),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(8.0),
                    height: 70,
                    child: ElevatedButton(
                      onPressed: () {
                        // Ваше действие при нажатии на кнопку
                      },
                      child: Text('Добавить предмет учителю'),
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
            // Navigator.pushReplacement(
            //   context,
              // MaterialPageRoute(builder: (context) => ParentalControlFinalGrades()),
            // );
          } else if (index == 2) {
            // Navigator.pushReplacement(
            //   context,
            //   MaterialPageRoute(builder: (context) => ParentsProfileMenu()),
            // );
          }
        },
        currentIndex: 0,
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
