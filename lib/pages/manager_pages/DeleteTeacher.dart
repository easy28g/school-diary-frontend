import 'package:flutter/material.dart';

class DeleteTeacher extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _DeleteTeacherState();
}

class _DeleteTeacherState extends State<DeleteTeacher> {
  List<String> teachers = [
    'Фамилия И.О. - Предмет1',
    'Фамилия И.О. - Предмет2',
    'Фамилия И.О. - Предмет3',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('VibeTime удаление учителя'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: ListView.builder(
          shrinkWrap: true,
          itemCount: teachers.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(teachers[index]),
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
                                teachers.removeAt(index);
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
