import 'package:flutter/material.dart';
import 'package:intl/intl.dart';


class TeachersCalendar extends StatefulWidget{

  const TeachersCalendar({super.key});

  @override
  State<TeachersCalendar> createState() => _TeachersCalendarState();
}

class _TeachersCalendarState extends State<TeachersCalendar> {
  DateTime _selectedDate = DateTime.now();

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: _selectedDate,
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
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
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => _selectDate(context),
              child: Text('Выберите дату'),
            ),
            Text(
              'Selected Date: ${DateFormat('yyyy-MM-dd').format(_selectedDate.toLocal())}',
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
