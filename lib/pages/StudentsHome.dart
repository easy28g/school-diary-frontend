import 'package:flutter/material.dart';
import 'package:school_diary/pages/HomeworkPages.dart';
import 'package:school_diary/pages/ProfileMenu.dart';
import 'package:school_diary/pages/StudentCalendar.dart';
import 'package:school_diary/pages/StudentsFinalGrades.dart';

class StudentsHome extends StatelessWidget {

  DataRow _buildDataRow(
      BuildContext context,
      String number,
      String time,
      String subject,
      String plusMinus,
      String grade,
      ) {
    return DataRow(
      cells: [
        DataCell(InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => HomeworkPages(),
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
                builder: (context) => HomeworkPages(),
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
                builder: (context) => HomeworkPages(),
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
                builder: (context) => HomeworkPages(),
              ),
            );
          },
          child: Text(plusMinus),
        )),
        DataCell(InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => HomeworkPages(),
              ),
            );
          },
          child: Text(grade),
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
                columnSpacing: 11.0,
                columns: [
                  DataColumn(label: Text('#'), numeric: true),
                  DataColumn(label: Text('время')),
                  DataColumn(label: Text('занятия')),
                  DataColumn(label: Text('+/-')),
                  DataColumn(label: Text('оценка')),
                ],
                rows: [
                  _buildDataRow(context, '1', '08:00', 'Математика', '+', '5'),
                  _buildDataRow(context, '2', '08:50', 'Литература', '+', ''),
                  _buildDataRow(context, '3', '09:40', 'Изо', '+', '5; 5'),
                  _buildDataRow(context, '4', '10:35', 'Дифференциальное уравнение', '+', ''),
                ],
              ),
                // DataTable(
                //   columnSpacing: 11.0,
                //   columns: [
                //     DataColumn(label: Text('#'), numeric: true),
                //     DataColumn(label: Text('время')),
                //     DataColumn(label: Text('занятия')),
                //     DataColumn(label: Text('+/-')),
                //     DataColumn(label: Text('оценка')),
                //   ],
                //   rows: [
                //     DataRow(
                //       cells: [
                //         DataCell(Text('1')),
                //         DataCell(Text('08:00')),
                //         DataCell(ElevatedButton(
                //           onPressed: () {
                //             Navigator.push(
                //               context,
                //               MaterialPageRoute(
                //                 builder: (context) => HomeworkPages(),
                //               ),
                //             );
                //           },
                //           child: Text('математика'),
                //         )),
                //         DataCell(Text('+')),
                //         DataCell(Text('5')),
                //       ],
                //     ),
                //     DataRow(
                //       cells: [
                //         DataCell(Text('2')),
                //         DataCell(Text('08:50')),
                //         DataCell(ElevatedButton(
                //           onPressed: () {
                //             Navigator.push(
                //               context,
                //               MaterialPageRoute(
                //                 builder: (context) => HomeworkPages(),
                //               ),
                //             );
                //           },
                //           child: Text('литература'),
                //         )),
                //         DataCell(Text('+')),
                //         DataCell(Text('')),
                //       ],
                //     ),
                //     DataRow(
                //       cells: [
                //         DataCell(Text('3')),
                //         DataCell(Text('09:40')),
                //         DataCell(ElevatedButton(
                //           onPressed: () {
                //             Navigator.push(
                //               context,
                //               MaterialPageRoute(
                //                 builder: (context) => HomeworkPages(),
                //               ),
                //             );
                //           },
                //           child: Text('изо'),
                //         )),
                //         DataCell(Text('+')),
                //         DataCell(Text('5; 5')),
                //       ],
                //     ),
                //     DataRow(
                //       cells: [
                //         DataCell(Text('4')),
                //         DataCell(Text('10:35')),
                //         DataCell(ElevatedButton(
                //           onPressed: () {
                //             Navigator.push(
                //               context,
                //               MaterialPageRoute(
                //                 builder: (context) => HomeworkPages(),
                //               ),
                //             );
                //           },
                //           child: Text('дифференциальные уравнения'),
                //         )),
                //         DataCell(Text('+')),
                //         DataCell(Text('')),
                //       ],
                //     ),
                //   ],
                // ),
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
                    builder: (context) => StudentCalendar(), // Замените на ваш следующий экран
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
              MaterialPageRoute(builder: (context) => StudentsFinalGrades()),
            );
          } else if (index == 2) {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => ProfileMenu()),
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