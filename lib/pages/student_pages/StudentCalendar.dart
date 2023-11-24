import 'package:flutter/material.dart';
import 'package:intl/intl.dart';


class StudentCalendar extends StatefulWidget{

  const StudentCalendar({super.key});

  @override
  State<StudentCalendar> createState() => _StudentCalendarState();
}

// class _StudentCalendarState extends State<StudentCalendar> {
//
//   CalendarController _calendarController = CalendarController();
//   DateTime _selectedDate = DateTime.now();
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Күндөлүк'),
//         centerTitle: true,
//       ),
//       body: Column(
//         children: [
//           Expanded(
//             child: SfCalendar(
//               controller: _calendarController,
//               view: CalendarView.month,
//               onTap: (CalendarTapDetails details) {
//                 if (details.targetElement == CalendarElement.calendarCell) {
//                   // Получаем дату при клике
//                   DateTime? selectedDate = details.date;
//                   setState(() {
//                     _selectedDate = selectedDate ?? DateTime.now();
//                   });
//                   print('Selected Date: $selectedDate');
//                   // Добавьте здесь свой код обработки выбранной даты
//                 }
//               },
//               monthViewSettings: MonthViewSettings(
//                 showAgenda: true,
//                 agendaViewHeight: 300,
//               ),
//             ),
//           ),
//           Center(
//             child: Text('Selected Date: $_selectedDate'),
//           ),
//         ],
//       ),
//     );
//   }
// }

// class _StudentCalendarState extends State<StudentCalendar> {
//   DateTime _selectedDate = DateTime.now();
//
//   Future<void> _selectDate(BuildContext context) async {
//     final DateTime? picked = await showDatePicker(
//       context: context,
//       initialDate: _selectedDate,
//       firstDate: DateTime(2000),
//       lastDate: DateTime(2101),
//     );
//
//     if (picked != null && picked != _selectedDate) {
//       setState(() {
//         _selectedDate = picked;
//       });
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Date Picker Example'),
//         centerTitle: true,
//       ),
//       body: Center(
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: <Widget>[
//             SizedBox(height: 20),
//             ElevatedButton(
//               onPressed: () => _selectDate(context),
//               child: Text('Select Date'),
//             ),
//             Text(
//               'Selected Date: ${_selectedDate.toLocal()}',
//               style: TextStyle(fontSize: 20),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

class _StudentCalendarState extends State<StudentCalendar> {

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
