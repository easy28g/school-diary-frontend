import 'package:flutter/material.dart';

import 'StudentsList.dart';

class SetHomework extends StatefulWidget{

  const SetHomework({super.key});

  @override
  State<SetHomework> createState() => _SetHomeworkState();
}

class _SetHomeworkState extends State<SetHomework> {

  final TextEditingController _textFieldController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('VibeTime Күндөлүк'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.fromLTRB(18.0, 60.0, 18.0, 0.0),
        child: TextField(
          controller: _textFieldController,
          decoration: InputDecoration(
            labelText: 'Задание',
            border: OutlineInputBorder(),
          ),
          maxLines: null,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          String enteredText = _textFieldController.text;
          print('Entered Text: $enteredText');
          _textFieldController.clear();
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: Text('Домашнее задание'),
                content: Text('$enteredText'),
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

