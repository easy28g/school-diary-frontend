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
        padding: const EdgeInsets.fromLTRB(18.0, 35.0, 18.0, 0.0),
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
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => StudentsList(),
            ),
          );
        },
        child: Icon(Icons.check),
      ),
    );
  }
}
