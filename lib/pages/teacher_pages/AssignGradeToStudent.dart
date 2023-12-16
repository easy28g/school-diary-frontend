import 'package:flutter/material.dart';

import 'StudentsList.dart';

class AssignGradeToStudent extends StatefulWidget {
  const AssignGradeToStudent({super.key});

  @override
  State<AssignGradeToStudent> createState() => _AssignGradeToStudentState();
}

class _AssignGradeToStudentState extends State<AssignGradeToStudent> {
  final TextEditingController _textFieldController = TextEditingController();
  final TextEditingController _textFieldControllerMark = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('VibeTime Күндөлүк'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.fromLTRB(18.0, 60.0, 18.0, 0.0),
        child: Column(
          children: [
            TextField(
              controller: _textFieldController,
              decoration: InputDecoration(
                labelText: 'Описание',
                border: OutlineInputBorder(),
              ),
              maxLines: null,
            ),
            SizedBox(height: 16.0),
            // Просто добавьте немного отступа между полями
            TextField(
              controller: _textFieldControllerMark,
              decoration: InputDecoration(
                labelText: 'Оценка',
                border: OutlineInputBorder(),
              ),
              maxLines: null,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          String enteredText = _textFieldController.text;
          String markText = _textFieldControllerMark.text;
          print('Entered Text1: $enteredText'); // терминал
          print('Entered Text2: $markText'); // терминал
          _textFieldController.clear();
          _textFieldControllerMark.clear();
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: Text('Отметить успеваемость'),
                content: Text('Описание: $enteredText \n'
                              'Оценка: $markText'),
                actions: [
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pop(); // Закрыть виджет SetHomework
                      Navigator.pop(
                        context,
                        MaterialPageRoute(
                          builder: (context) => StudentsList(),
                        ),
                      );
                    },
                    child: Text('Сохранить'),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pop(); // Закрыть диалоговое окно
                    },
                    child: Text('Отменить'),
                  ),
                ],
              );
            },
          );
        },
        child: Icon(Icons.check),
      ),
    );
  }
}
