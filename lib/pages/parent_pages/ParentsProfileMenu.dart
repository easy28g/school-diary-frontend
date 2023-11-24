import 'package:flutter/material.dart';

import 'ParentalControlFinalGrades.dart';
import 'ParentsHome.dart';

class ParentsProfileMenu extends StatefulWidget {

  @override
  State<StatefulWidget> createState() => _ParentsProfileMenuState();

}

class _ParentsProfileMenuState extends State<ParentsProfileMenu> {

  // Замените эти значения на реальные значения
  String lastName = "Ваша фамилия";
  String firstName = "Ваше имя";
  double averageGPA = 4.2;
  int numberOfDelays = 0;
  int ratingInGroup = 0;
  int identificationNumber = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('VibeTime Күндөлүк p'),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(13.0, 35.0, 13.0, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 22.0), // Отступ между строками
              Text(
                "Идентификационный номер: $identificationNumber",
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(height: 22.0),
              Text(
                "Фамилия: $lastName",
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(height: 22.0), // Отступ между строками
              Text(
                "Имя: $firstName",
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(height: 22.0), // Отступ между строками
              Text(
                "Средний балл по всем предметам: $averageGPA",
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(height: 22.0), // Отступ между строками
              Text(
                "Количество опозданий на занятия: $numberOfDelays",
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(height: 22.0), // Отступ между строками
              Text(
                "Ваш рейтинг в группе: $ratingInGroup",
                style: TextStyle(fontSize: 18),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          if (index == 0) {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => ParentsHome()),
            );
          } else if (index == 1) {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => ParentalControlFinalGrades()),
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
            label: 'Итоговые',
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