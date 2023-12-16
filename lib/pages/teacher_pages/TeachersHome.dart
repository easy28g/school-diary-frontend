import 'package:flutter/material.dart';

import 'ClassJournalForTeachers.dart';
import 'StudentsList.dart';
import 'TeachersCalendar.dart';
import 'TeachersProfileMenu.dart';

class TeachersHome extends StatefulWidget{

  const TeachersHome({super.key});

  @override
  State<TeachersHome> createState() => _TeachersHomeState();
}

class _TeachersHomeState extends State<TeachersHome> {

  DataRow _buildDataRow(
      BuildContext context,
      String number,
      String time,
      String subject,
      String studentGroup,
      ) {
    return DataRow(
      cells: [
        DataCell(InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => StudentsList(),
                // settings: RouteSettings(
                //   arguments: 'Ваш текст здесь', // Передаем текст в HomeworkPages
                // ),
              ),
            );
          },
          child: Text(number),
        )),
        DataCell(InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => StudentsList(),
                // settings: RouteSettings(
                //   arguments: 'Ваш текст здесь', // Передаем текст в HomeworkPages
                // ),
              ),
            );
          },
          child: Text(time),
        )),
        DataCell(InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => StudentsList(),
                // settings: RouteSettings(
                //   arguments: 'Ваш текст здесь', // Передаем текст в HomeworkPages
                // ),
              ),
            );
          },
          child: Text(subject),
        )),
        DataCell(InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => StudentsList(),
              ),
            );
          },
          child: Text(studentGroup),
        )),
      ],
    );
  }

  Widget buildDayButton(String day) {
    return ElevatedButton(
      onPressed: () {
        // Добавьте свой код обработки нажатия на кнопку
        print('Selected day: $day');
      },
      child: Text(day),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('VibeTime Күндөлүк'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              children: [
                DataTable(
                  columns: [
                    DataColumn(label: Text('#')),
                    DataColumn(label: Text('Время')),
                    DataColumn(label: Text('Занятия')),
                    DataColumn(label: Text('Класс')),
                  ],
                  rows: [
                    _buildDataRow(context, '1', '08:00', 'Алгебра', '9В'),
                    _buildDataRow(context, '2', '08:50', 'Алгебра', '9В'),
                    _buildDataRow(context, '3', '09:40', 'Геометрия', '10А'),
                    _buildDataRow(context, '4', '10:35', 'Логика', '11Б'),
                  ],
                ),
              ],
            ),
          ),
          Container(
            alignment: FractionalOffset.bottomRight,
            height: 50, // Высота контейнера с иконкой
            child: IconButton(
              onPressed: () {
                // Добавьте код для обработки нажатия кнопки "Календарь"
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => TeachersCalendar(), // Замените на ваш следующий экран
                  ),
                );
              },
              icon: Icon(Icons.calendar_month), // Иконка календаря
              tooltip: 'Календарь', // Всплывающая подсказка
            ),
          ),
          Align(
            alignment: FractionalOffset.bottomCenter,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: buildDayButton('Пн'),
                ),
                Expanded(
                  child: buildDayButton('Вт'),
                ),
                Expanded(
                  child: buildDayButton('Ср'),
                ),
                Expanded(
                  child: buildDayButton('Чт'),
                ),
                Expanded(
                  child: buildDayButton('Пт'),
                ),
                Expanded(
                  child: buildDayButton('Сб'),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          if (index == 1) {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => ClassJournalForTeachers()),
            );
          } else if (index == 2) {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => TeachersProfileMenu()),
            );
          }
        },
        currentIndex: 0,
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