import 'package:flutter/material.dart';

import 'SelectedStudentToDelete.dart';

class DeleteStudent extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _DeleteStudentState();
}

class _DeleteStudentState extends State<DeleteStudent> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('VibeTime Күндөлүк'),
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
                ],
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SelectedStudentToDelete(),
                  ),
                );
              },
              child: Padding(
                padding: const EdgeInsets.fromLTRB(25.0, 8.0, 8.0, 8.0),
                child: Text('Класс 10А', style: TextStyle(fontSize: 20)),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SelectedStudentToDelete(),
                  ),
                );
              },
              child: Padding(
                padding: const EdgeInsets.fromLTRB(25.0, 8.0, 8.0, 8.0),
                child: Text('Класс 10Б', style: TextStyle(fontSize: 20)),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SelectedStudentToDelete(),
                  ),
                );
              },
              child: Padding(
                padding: const EdgeInsets.fromLTRB(25.0, 8.0, 8.0, 8.0),
                child: Text('Класс 10В', style: TextStyle(fontSize: 20)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
