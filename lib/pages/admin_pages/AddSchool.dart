import 'package:flutter/material.dart';

import 'AdminsHome.dart';

class AddSchool extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _AddSchoolState();
}

class _AddSchoolState extends State<AddSchool> {

  final TextEditingController _schoolRegion = TextEditingController();
  final TextEditingController _schoolArea = TextEditingController();
  final TextEditingController _schoolSettlement = TextEditingController();
  final TextEditingController _schoolNumber = TextEditingController();
  final TextEditingController _schoolName = TextEditingController();
  final TextEditingController _schoolCode = TextEditingController();
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
              TextFormField(
                controller: _schoolRegion,
                decoration: InputDecoration(labelText: 'Регион'),
                maxLines: null,
              ),
              TextFormField(
                controller: _schoolArea,
                decoration: InputDecoration(labelText: 'Район'),
                maxLines: null,
              ),
              TextFormField(
                controller: _schoolSettlement,
                decoration: InputDecoration(labelText: 'Поселение'),
                maxLines: null,
              ),
              TextFormField(
                controller: _schoolNumber,
                decoration: InputDecoration(labelText: 'Номер школы'),
                maxLines: null,
              ),
              TextFormField(
                controller: _schoolName,
                decoration: InputDecoration(labelText: 'Название школы'),
                maxLines: null,
              ),
              TextFormField(
                controller: _schoolCode,
                decoration: InputDecoration(labelText: 'Код школы'),
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
                  String dialogSchoolNumber = _schoolNumber.text;
                  String dialogSchoolName = _schoolName.text;
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: Text('Добавить школу?'),
                        content: Text('№ ${dialogSchoolNumber} ${dialogSchoolName}'),
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
                                  builder: (context) => AdminsHome(),
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
                child: Text('Зарегистрировать школу'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}