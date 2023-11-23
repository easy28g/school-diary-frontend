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
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: TextField(
            controller: _textFieldController,
            decoration: InputDecoration(
              labelText: 'Задания',
              border: OutlineInputBorder(),
            ),
            maxLines: null,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          String enteredText = _textFieldController.text;
          print('Entered Text: $enteredText'); // терминал
          _textFieldController.clear();
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => StudentsList(), // Замените на ваш следующий экран
            ),
          );
        },
        child: Icon(Icons.check),
      ),
    );
  }

}

