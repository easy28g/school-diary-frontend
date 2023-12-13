import 'package:flutter/material.dart';

import 'ManagersHome.dart';

class AddSubjects extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _AddSubjectsState();
}

class _AddSubjectsState extends State<AddSubjects> {
  List<TextEditingController> _subjectControllers = [TextEditingController()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Добавить предмет'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
          children: [
            for (int i = 0; i < _subjectControllers.length; i++)
              TextFormField(
                controller: _subjectControllers[i],
                decoration: InputDecoration(labelText: 'Предмет ${i + 1}'),
                maxLines: null,
              ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _subjectControllers.add(TextEditingController());
                });
              },
              child: Text('+'),
            ),
            ElevatedButton(
              onPressed: () {
                List<String> subjects = _subjectControllers.map((controller) => controller.text).toList();
                print(_subjectControllers[0].text);
                print(subjects);
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ManagersHome(),
                  ),
                      (route) => false,
                );
              },
              child: Text('Сохранить'),
            ),
          ],
        ),
      ),
    );
  }
}
