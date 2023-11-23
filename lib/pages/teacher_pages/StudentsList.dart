import 'package:flutter/material.dart';

import 'AssignGradeToStudent.dart';
import 'SetHomework.dart';
import 'TeachersCalendar.dart';

class StudentsList extends StatefulWidget {
  const StudentsList({super.key});

  @override
  State<StudentsList> createState() => _StudentsListState();
}

class MyDataRow {
  bool isChecked;

  MyDataRow(this.isChecked);
}

class _StudentsListState extends State<StudentsList> {
  bool? isChecked = false;

  List<MyDataRow> dataRows = [
    MyDataRow(false),
    MyDataRow(false),
    MyDataRow(false),
    MyDataRow(false),
    MyDataRow(false),
    MyDataRow(false),
    MyDataRow(false),
    MyDataRow(false),
    MyDataRow(false),
    MyDataRow(false),
    MyDataRow(false),
    MyDataRow(false),
    MyDataRow(false),
    MyDataRow(false),
    MyDataRow(false),
    MyDataRow(false),
    MyDataRow(false),
    MyDataRow(false),
    MyDataRow(false),
    MyDataRow(false),
    MyDataRow(false),
    MyDataRow(false),
    MyDataRow(false),
    MyDataRow(false),
  ];

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
                  columnSpacing: 7.0,
                  columns: [
                    DataColumn(label: Text('#'), numeric: true),
                    DataColumn(label: Text('Фамилия')),
                    DataColumn(label: Text('Имя')),
                    DataColumn(label: Text('нб')),
                    DataColumn(label: Text('-/-')),
                  ],
                  rows: dataRows
                      .asMap()
                      .entries
                      .map(
                        (entry) => DataRow(
                          cells: [
                            DataCell(Text('${entry.key + 1}')),
                            DataCell(
                                InkWell(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => AssignGradeToStudent(),
                                      ),
                                    );
                                  },
                                  child: Text('Фамилия ${entry.key + 1}'),
                                )
                            ),
                            DataCell(
                                InkWell(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => AssignGradeToStudent(),
                                      ),
                                    );
                                  },
                                  child: Text('Имя ${entry.key + 1}'),
                                )
                            ),
                            DataCell(
                              Container(
                                child: Checkbox(
                                  value: entry.value.isChecked,
                                  onChanged: (newBool) {
                                    setState(() {
                                      entry.value.isChecked = newBool ?? false;
                                    });
                                  },
                                ),
                              ),
                            ),
                            DataCell(Text('5;5')),
                          ],
                        ),
                      )
                      .toList(),
                ),
              ],
            ),
          ),
          Align(
            alignment: FractionalOffset.bottomCenter,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              SetHomework(), // Замените на ваш следующий экран
                        ),
                      );
                    },
                    child: Text('Добавить Д/З'),
                  ),
                  Container(
                    alignment: FractionalOffset.bottomRight,
                    height: 50, // Высота контейнера с иконкой
                    child: IconButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                TeachersCalendar(), // Замените на ваш следующий экран
                          ),
                        );
                      },
                      icon: Icon(Icons.calendar_month), // Иконка календаря
                      tooltip: 'Календарь', // Всплывающая подсказка
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {

                    },
                    child: Text('Сохранить'),
                  ),
                ]),
          ),
        ],
      ),
    );
  }
}
