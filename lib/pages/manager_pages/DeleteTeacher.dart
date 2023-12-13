import 'package:flutter/material.dart';

class DeleteTeacher extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _DeleteTeacherState();
}

class _DeleteTeacherState extends State<DeleteTeacher> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('VibeTime удаление учителя'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: ListView(
            shrinkWrap: true,
            children: [
              ListTile(
                title: Text('Фамилия И.О.'),
                subtitle: Text('Предмет'),
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
                                // Navigator.of(context).pop(); // Закрыть диалоговое окно
                              },
                              child: Text('Отмена'),
                            ),
                            TextButton(
                              onPressed: () {
                                // Выполните действия удаления здесь
                                // Navigator.of(context).pop(); // Закрыть диалоговое окно
                              },
                              child: Text('Удалить'),
                            ),
                          ],
                        );
                      },
                    );
                  },
                ),
              ),
              ListTile(
                title: Text('Фамилия И.О.'),
                subtitle: Text('Предмет'),
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
                                // Navigator.of(context).pop(); // Закрыть диалоговое окно
                              },
                              child: Text('Отмена'),
                            ),
                            TextButton(
                              onPressed: () {
                                // Выполните действия удаления здесь
                                // Navigator.of(context).pop(); // Закрыть диалоговое окно
                              },
                              child: Text('Удалить'),
                            ),
                          ],
                        );
                      },
                    );
                  },
                ),
              ),
              ListTile(
                title: Text('Фамилия И.О.'),
                subtitle: Text('Предмет'),
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
                                // Navigator.of(context).pop(); // Закрыть диалоговое окно
                              },
                              child: Text('Отмена'),
                            ),
                            TextButton(
                              onPressed: () {
                                // Выполните действия удаления здесь
                                // Navigator.of(context).pop(); // Закрыть диалоговое окно
                              },
                              child: Text('Удалить'),
                            ),
                          ],
                        );
                      },
                    );
                  },
                ),
              ),
            ]
        ),
      ),
    );
  }
}