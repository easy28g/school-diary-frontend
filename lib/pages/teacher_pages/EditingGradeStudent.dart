import 'package:flutter/material.dart';

import 'StudentsList.dart';

class EditingGradeStudent extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => EditingGradeStudentState();
}

class EditingGradeStudentState extends State<EditingGradeStudent> {

  final TextEditingController _textFieldController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final String arguments = ModalRoute.of(context)?.settings.arguments as String;
    _textFieldController.text = arguments ?? '';
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
                border: OutlineInputBorder(),
              ),
              maxLines: null,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          String markText = _textFieldController.text;
          showDialog(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  title: Text('Вы хотите исправить?'),
                  content: Text('Оценка: $markText'),
                  actions: [
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).pop(); // Закрыть диалоговое окно
                      },
                      child: Text('Отменить'),
                    ),
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
                  ],
                );
              }
          );
        },
        child: Icon(Icons.check),
      ),
    );
  }
}