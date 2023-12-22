import 'package:flutter/material.dart';

class SelectedStudentToDelete extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _SelectedStudentToDeleteState();
}

class _SelectedStudentToDeleteState extends State<SelectedStudentToDelete> {
  List<String> students = [
    'Фамилия И.О. - Класс 10А',
    'Фамилия И.О. - Класс 10Б',
    'Фамилия И.О. - Класс 10В',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('VibeTime Күндөлүк'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: ListView.builder(
          shrinkWrap: true,
          itemCount: students.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(students[index]),
              trailing: IconButton(
                icon: Icon(Icons.delete),
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: Text('Подтвердите удаление'),
                        content: Text('Вы уверены, что хотите удалить?'),
                        actions: [
                          TextButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: Text('Отмена'),
                          ),
                          TextButton(
                            onPressed: () {
                              // Выполните действия удаления здесь
                              setState(() {
                                students.removeAt(index);
                              });
                              Navigator.of(context).pop();
                            },
                            child: Text('Удалить'),
                          ),
                        ],
                      );
                    },
                  );
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
