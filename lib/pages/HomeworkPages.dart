import 'package:flutter/material.dart';

class HomeworkPages extends StatefulWidget{

  const HomeworkPages({super.key});

  @override
  State<HomeworkPages> createState() => _HomeworkPagesState();
}

class _HomeworkPagesState extends State<HomeworkPages> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('VibeTime'),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          DataTable(
            columnSpacing: 11.0,
            columns: [
              DataColumn(label: Text('#'), numeric: true),
              DataColumn(label: Text('Домашнее задание')),
            ],
            rows: [
              DataRow(
                cells: [
                  DataCell(Text('1')),
                  DataCell(Text('Решить пример 36')),
                ],
              ),
              DataRow(
                cells: [
                  DataCell(Text('2')),
                  DataCell(Text('Прочитать параграф 23')),
                ],
              ),
              DataRow(
                cells: [
                  DataCell(Text('3')),
                  DataCell(Text('Нарисовать рисунок')),
                ],
              ),
              DataRow(
                cells: [
                  DataCell(Text('4')),
                  DataCell(Text('Разобрать решение однородного уравнения')),
                ],
              ),
            ],
          ),
        ],
      ),


    );
  }

}