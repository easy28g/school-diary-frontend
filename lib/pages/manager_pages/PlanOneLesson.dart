import 'package:flutter/material.dart';

import 'PlanOneDay.dart';

class PlanOneLesson extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _PlanOneLessonState();
}

class _PlanOneLessonState extends State<PlanOneLesson> {
  List<TextEditingController> _subjectControllers = [TextEditingController()];
  List<TimeOfDay> _timeControllers = [TimeOfDay.now()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Занятие'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
          children: [
            Column(
              children: List.generate(_subjectControllers.length, (index) {
                return Row(
                  children: [
                    Container(
                      width: 90.0, // Задайте ширину по своему усмотрению
                      child: TextField(
                        readOnly: true,
                        controller: TextEditingController(
                          text: _timeControllers[index].format(context),
                        ),
                        decoration: InputDecoration(
                          labelText: 'Время ${index + 1}',
                        ),
                        onTap: () async {
                          TimeOfDay? selectedTime = await showTimePicker(
                            context: context,
                            initialTime: _timeControllers[index],
                          );
                          if (selectedTime != null) {
                            setState(() {
                              _timeControllers[index] = selectedTime;
                            });
                          }
                        },
                      ),
                    ),
                    Expanded(
                      child: TextFormField(
                        controller: _subjectControllers[index],
                        decoration: InputDecoration(labelText: 'Предмет'),
                        maxLines: null,
                      ),
                    ),
                    SizedBox(width: 16.0), // Добавлен промежуток между полями
                  ],
                );
              }),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _subjectControllers.add(TextEditingController());
                  _timeControllers.add(TimeOfDay.now());
                });
              },
              child: Text('+'),
            ),
            ElevatedButton(
              onPressed: () {
                List<String> subjects = _subjectControllers.map((controller) => controller.text).toList();
                List<String> times = _timeControllers.map((time) => time.format(context)).toList();
                print(subjects);
                print(times);
                // Navigator.pushAndRemoveUntil(
                //   context,
                //   MaterialPageRoute(
                //     builder: (context) => SchedulePlanning(),
                //   ),
                //       (route) => false,
                // );
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: Text('Добавить предмет?'),
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
                                builder: (context) => PlanOneDay(),
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
    );
  }
}