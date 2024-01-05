import 'package:flutter/material.dart';
import 'package:multi_select_flutter/dialog/multi_select_dialog_field.dart';
import 'package:multi_select_flutter/util/multi_select_item.dart';
import 'package:multi_select_flutter/util/multi_select_list_type.dart';

import 'ManagersHome.dart';

class AddTeacher extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _AddTeacherState();
}

class _AddTeacherState extends State<AddTeacher> {
  final TextEditingController _lastNameController = TextEditingController();
  final TextEditingController _firstNameController = TextEditingController();
  final TextEditingController _middleNameController = TextEditingController();
  DateTime? _selectedDate;
  final TextEditingController _addressController = TextEditingController();
  final List<String> subjects = ['Математика', 'Логика', 'Физика', 'Химия',
    'Биология', 'Изо', 'Алгебра', 'Геометрия', 'Естествознание', 'Литература',
    'Этика', 'Черчение', 'Музыка', 'Информатика', 'Философия', 'Физра', 'Труд',
    'МХЛ', 'Арифметика'];
  List<String> _selectedSubjects = [];

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
            MultiSelectDialogField(
              items: subjects
                  .map((subject) => MultiSelectItem<String>(subject, subject))
                  .toList(),
              listType: MultiSelectListType.LIST,
              onConfirm: (values) {
                setState(() {
                  _selectedSubjects = values.map<String>((item) => item).toList();
                });
              },
              initialValue: _selectedSubjects,
              buttonText: Text('Выберите предмет'),
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
                  print('Предмет: ${_selectedSubjects}');
                  String firstname = _firstNameController.text;
                  String secondname = _lastNameController.text;
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: Text('Добавить учителя?'),
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
                child: Text('Зарегистрировать учителя'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}