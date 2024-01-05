import 'package:flutter/material.dart';
import 'package:multi_select_flutter/dialog/multi_select_dialog_field.dart';
import 'package:multi_select_flutter/util/multi_select_item.dart';
import 'package:multi_select_flutter/util/multi_select_list_type.dart';

import 'ManagersHome.dart';

class AddSubjectsToTeacher extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _AddSubjectsToTeacherState();
}

const List<String> list = <String>['Математичка', 'Логичка', 'Физичка', 'Химичка',
  'Биологичка', 'Изочка', 'Алгебричка', 'Геометричка', 'Естествознаниечка', 'Литературка',
  'Этичка', 'Черченичка', 'Музичка', 'Информатичка', 'Философичка', 'Физручка', 'Трудичка',
  'МХЛичка', 'Арифметичка'];

class _AddSubjectsToTeacherState extends State<AddSubjectsToTeacher> {

  final List<String> subjects = ['Математичка', 'Логика', 'Физика', 'Химия',
    'Биология', 'Изо', 'Алгебра', 'Геометрия', 'Естествознание', 'Литература',
    'Этика', 'Черчение', 'Музыка', 'Информатика', 'Философия', 'Физра', 'Труд',
    'МХЛ', 'Арифметика'];

  final List<String> teachers = ['Математичка', 'Логичка', 'Физичка', 'Химичка',
    'Биологичка', 'Изочка', 'Алгебричка', 'Геометричка', 'Естествознаниечка', 'Литературка',
    'Этичка', 'Черченичка', 'Музичка', 'Информатичка', 'Философичка', 'Физручка', 'Трудичка',
    'МХЛичка', 'Арифметичка'];

  List<String> _selectedSubjects = [];

  List<String> _selectedTeachers = [];

  String dropdownValue = list.first;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('VibeTime'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
          child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: double.infinity, // Это позволяет контейнеру занимать всю доступную ширину
                      child: DropdownButton<String>(
                        value: dropdownValue,
                        // icon: const Icon(Icons.arrow_downward),
                        // elevation: 16,
                        onChanged: (String? value) {
                          // This is called when the user selects an item.
                          setState(() {
                            dropdownValue = value!;
                          });
                        },
                        items: list.map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                      ),
                    ),
                    MultiSelectDialogField(
                      items: subjects
                          .map((subject) =>
                          MultiSelectItem<String>(subject, subject))
                          .toList(),
                      listType: MultiSelectListType.LIST,
                      onConfirm: (values) {
                        setState(() {
                          _selectedSubjects =
                              values.map<String>((item) => item).toList();
                        });
                      },
                      initialValue: _selectedSubjects,
                      buttonText: Text('Выберите предмет'),
                    ),
                    Container(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {
                          print('Предмет: ${_selectedSubjects}');
                          showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                title: Text('Сохранить?'),
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
                        child: Text('Сохранить'),
                      ),
                    ),
                  ]
              )
          )
      ),
    );
  }
}