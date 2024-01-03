import 'package:flutter/material.dart';

import 'SelectedSchoolRegion.dart';

class AddManagerSchool extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _AddManagerSchoolState();
}

class _AddManagerSchoolState extends State<AddManagerSchool> {

  final TextEditingController _firstname = TextEditingController();
  final TextEditingController _secondname = TextEditingController();
  final TextEditingController _code = TextEditingController();

  // придумай код из выше перечисленных
  DateTime? _selectedDate;

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime.now(),
    );

    if (picked != null && picked != _selectedDate) {
      setState(() {
        _selectedDate = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final String arguments = ModalRoute.of(context)?.settings.arguments as String;
    return Scaffold(
      appBar: AppBar(
        title: Text('VibeTime Күндөлүк'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    Text('$arguments', style: TextStyle(fontSize: 20)),
                  ],
                ),
              ),
              TextFormField(
                controller: _firstname,
                decoration: InputDecoration(labelText: 'Имя'),
                maxLines: null,
              ),
              TextFormField(
                controller: _secondname,
                decoration: InputDecoration(labelText: 'Фамилия'),
                maxLines: null,
              ),
              TextFormField(
                controller: _code,
                decoration: InputDecoration(labelText: 'Код менеджера'),
                maxLines: null,
              ),
              Row(
                children: [
                  Text('Дата добавления:'),
                  SizedBox(width: 16.0),
                  ElevatedButton(
                    onPressed: () => _selectDate(context),
                    child: Text(_selectedDate == null
                        ? 'Выберите дату'
                        : '${_selectedDate!.day}.${_selectedDate!.month}.${_selectedDate!.year}'),
                  ),
                ],
              ),
              ElevatedButton(
                onPressed: () {
                  // Здесь вы можете использовать введенные данные для дальнейшей обработки
                  String firstname = _firstname.text;
                  String secondname = _secondname.text;
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: Text('Добавить менеджера?'),
                        content: Text('${firstname} ${secondname}'),
                        actions: [
                          TextButton(
                            onPressed: () {
                              Navigator.of(context).pop(); // Закрыть диалоговое окно
                            },
                            child: Text('Нет'),
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.of(context).pop(); // Закрыть виджет SetHomework
                              Navigator.pop(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => SelectedSchoolRegion(),
                                ),
                              );
                            },
                            child: Text('Да'),
                          ),
                        ],
                      );
                    },
                  );
                },
                child: Text('Сохранить'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}