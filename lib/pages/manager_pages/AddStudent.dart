import 'package:flutter/material.dart';

import 'ManagersHome.dart';

class AddStudent extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _AddStudentState();
}

class _AddStudentState extends State<AddStudent> {
  final TextEditingController _lastNameController = TextEditingController();
  final TextEditingController _firstNameController = TextEditingController();
  final TextEditingController _middleNameController = TextEditingController();
  DateTime? _selectedDate;
  final TextEditingController _addressController = TextEditingController();
  final TextEditingController _classController = TextEditingController();

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
    return Scaffold(
      appBar: AppBar(
        title: Text('Регистрация ученика'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFormField(
                controller: _lastNameController,
                decoration: InputDecoration(labelText: 'Фамилия'),
                maxLines: null,
              ),
              TextFormField(
                controller: _firstNameController,
                decoration: InputDecoration(labelText: 'Имя'),
                maxLines: null,
              ),
              TextFormField(
                controller: _middleNameController,
                decoration: InputDecoration(labelText: 'Отчество'),
                maxLines: null,
              ),
              SizedBox(height: 16.0),
              Row(
                children: [
                  Text('Дата рождения:'),
                  SizedBox(width: 16.0),
                  ElevatedButton(
                    onPressed: () => _selectDate(context),
                    child: Text(_selectedDate == null
                        ? 'Выберите дату'
                        : '${_selectedDate!.day}.${_selectedDate!.month}.${_selectedDate!.year}'),
                  ),
                ],
              ),
              TextFormField(
                controller: _addressController,
                decoration: InputDecoration(labelText: 'Адрес'),
                maxLines: null,
              ),
              TextFormField(
                controller: _classController,
                decoration: InputDecoration(labelText: 'Класс'),
                maxLines: null,
              ),
              SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: () {
                  // Здесь вы можете использовать введенные данные для дальнейшей обработки
                  print('Фамилия: ${_lastNameController.text}');
                  print('Имя: ${_firstNameController.text}');
                  print('Отчество: ${_middleNameController.text}');
                  print('Дата рождения: $_selectedDate');
                  print('Адрес: ${_addressController.text}');
                  print('Класс: ${_classController.text}');
                  String firstname = _firstNameController.text;
                  String secondname = _lastNameController.text;
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: Text('Добавить ученика?'),
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
                                  builder: (context) => ManagersHome(),
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
                child: Text('Зарегистрировать ученика'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}