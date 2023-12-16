import 'package:flutter/material.dart';

class SelectedStudentToDelete extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _SelectedStudentToDeleteState();
}

class _SelectedStudentToDeleteState extends State<SelectedStudentToDelete> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('VibeTime Күндөлүк'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: ListView(
            shrinkWrap: true,
            children: [
              ListTile(
                title: Text('Фамилия И.О.'),
                subtitle: Text('Класс 10Б'),
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
              ),
              ListTile(
                title: Text('Фамилия И.О.'),
                subtitle: Text('Класс 10Б'),
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
              ),
              ListTile(
                title: Text('Фамилия И.О.'),
                subtitle: Text('Класс 10Б'),
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
              ),
            ]
        ),
      ),
    );
  }
}