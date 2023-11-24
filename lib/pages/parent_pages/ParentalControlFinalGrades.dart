import 'package:flutter/material.dart';

import 'ParentsHome.dart';
import 'ParentsProfileMenu.dart';

class ParentalControlFinalGrades extends StatefulWidget {

  @override
  State<StatefulWidget> createState() => _ParentalControlFinalGradesState();

}

class Item {

  Item({
    required this.headerText,
    required this.expandedText,
    this.isExpanded = false,
  });

  String headerText;
  Widget expandedText;
  bool isExpanded;

}

class _ParentalControlFinalGradesState extends State<ParentalControlFinalGrades> {

  final List<Item> _data = List<Item>.generate(11,
          (index) {
        return Item(
          headerText: '${index+1} Класс',
          expandedText: DataTable(
            columnSpacing: 11.0,
            columns: [
              DataColumn(label: Text('#'), numeric: true),
              DataColumn(label: Text('предмет')),
              DataColumn(label: Text('I')),
              DataColumn(label: Text('II')),
              DataColumn(label: Text('III')),
              DataColumn(label: Text('IV')),
              DataColumn(label: Text('Итг')),
            ],
            rows: [
              DataRow(
                cells: [
                  DataCell(Text('1')),
                  DataCell(Text('математика')),
                  DataCell(Text('5')),
                  DataCell(Text('5')),
                  DataCell(Text('5')),
                  DataCell(Text('5')),
                  DataCell(Text('5')),
                ],
              ),
              DataRow(
                cells: [
                  DataCell(Text('2')),
                  DataCell(Text('литература')),
                  DataCell(Text('5')),
                  DataCell(Text('5')),
                  DataCell(Text('5')),
                  DataCell(Text('5')),
                  DataCell(Text('5')),
                ],
              ),
              DataRow(
                cells: [
                  DataCell(Text('3')),
                  DataCell(Text('изо')),
                  DataCell(Text('5')),
                  DataCell(Text('5')),
                  DataCell(Text('5')),
                  DataCell(Text('5')),
                  DataCell(Text('5')),
                ],
              ),
              DataRow(
                cells: [
                  DataCell(Text('4')),
                  DataCell(Text('дифференциальные уравнения')),
                  DataCell(Text('5')),
                  DataCell(Text('5')),
                  DataCell(Text('5')),
                  DataCell(Text('5')),
                  DataCell(Text('5')),
                ],
              ),
            ],
          ),
        );
      }
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('VibeTime Күндөлүк p'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: ExpansionPanelList(
          expansionCallback: (int index, bool isExpanded) {
            setState((){
              _data[index].isExpanded = isExpanded;
            });
          },
          children: _data.map<ExpansionPanel>((Item item) {
            return ExpansionPanel(
              headerBuilder: (BuildContext context, bool isExpanded){
                return ListTile(
                  title: Text(item.headerText),
                );
              },
              body: ListTile(
                title: item.expandedText,
              ),
              isExpanded: item.isExpanded,
            );
          }).toList(),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          if (index == 0) {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => ParentsHome()),
            );
          } else if (index == 2) {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => ParentsProfileMenu()),
            );
          }
        },
        currentIndex: 1,
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