import 'package:flutter/material.dart';

import 'PlanOneLesson.dart';
import 'SchedulePlanning.dart';

class PlanOneDay extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _PlanOneDayState();
}

class _PlanOneDayState extends State<PlanOneDay> {
  List<TextEditingController> _subjectControllers = [];
  List<InkWell> _inkWells = [];

  @override
  Widget build(BuildContext context) {
    final String arguments = ModalRoute.of(context)?.settings.arguments as String;
    return Scaffold(
      appBar: AppBar(
        title: Text('$arguments'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
          children: [
            Column(
              children: List.generate(_inkWells.length, (index) {
                return Row(
                  children: [
                    Expanded(
                      child: _inkWells[index],
                    ),
                    SizedBox(width: 16.0),
                  ],
                );
              }),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _subjectControllers.add(TextEditingController());
                  _inkWells.add(buildInkWell(_subjectControllers.last));
                });
              },
              child: Text('+'),
            ),
            ElevatedButton(
              onPressed: () {
                List<String> subjects = _subjectControllers.map((controller) => controller.text).toList();
                print(subjects);
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
                      title: Text('Сохранить расписание?'),
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
                                builder: (context) => SchedulePlanning(),
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

  InkWell buildInkWell(TextEditingController controller) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => PlanOneLesson(),
          ),
        );
      },
      child: Container(
        padding: EdgeInsets.all(16.0),
        // decoration: BoxDecoration(
        //   border: Border.all(color: Colors.grey),
        //   borderRadius: BorderRadius.circular(8.0),
        // ),
        child: Text(
          '${_inkWells.length + 1} Занятие',
          style: TextStyle(fontSize: 16.0),
        ),
      ),
    );
  }
}
