import 'package:flutter/material.dart';

class ChoosedClassJournal extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ChoosedClassJournalState();
}

class _ChoosedClassJournalState extends State<ChoosedClassJournal> {
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
        title: Text('Класс 10Б'),
        centerTitle: true,
      ),
      body: Container(
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Text('Средняя школа №1', style: TextStyle(fontSize: 20)),
                  Text('Учебный год: 2023-2024', style: TextStyle(fontSize: 20)),
                  Text('10Б', style: TextStyle(fontSize: 20)),
                ],
              ),
            ),
            SingleChildScrollView(
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
                      ...grades[index].map((grade) => DataCell(Text(grade))),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: addRow,
        child: Icon(Icons.add),
      ),
    );
  }
}
