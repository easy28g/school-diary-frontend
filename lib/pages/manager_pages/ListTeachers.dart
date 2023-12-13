import 'package:flutter/material.dart';

import 'ListGroups.dart';

class ListTeachers extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ListTeachersState();
}

class _ListTeachersState extends State<ListTeachers> {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Список учителей'),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          InkWell(
            onTap: () {
              // Здесь добавьте код для навигации на другой экран
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ListGroups()),
              );
            },
            child: ListTile(
              title: Text('Фамилия И.О.'),
              subtitle: Text('Предметы'),
            ),
          ),
          InkWell(
            onTap: () {
              // Здесь добавьте код для навигации на другой экран
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ListGroups()),
              );
            },
            child: ListTile(
              title: Text('Фамилия И.О.'),
              subtitle: Text('Предметы'),
            ),
          ),
          InkWell(
            onTap: () {
              // Здесь добавьте код для навигации на другой экран
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ListGroups()),
              );
            },
            child: ListTile(
              title: Text('Фамилия И.О.'),
              subtitle: Text('Предметы'),
            ),
          ),
          InkWell(
            onTap: () {
              // Здесь добавьте код для навигации на другой экран
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ListGroups()),
              );
            },
            child: ListTile(
              title: Text('Фамилия И.О.'),
              subtitle: Text('Предметы'),
            ),
          ),
          InkWell(
            onTap: () {
              // Здесь добавьте код для навигации на другой экран
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ListGroups()),
              );
            },
            child: ListTile(
              title: Text('Фамилия И.О.'),
              subtitle: Text('Предметы'),
            ),
          ),
        ],
      ),
    );
  }
}