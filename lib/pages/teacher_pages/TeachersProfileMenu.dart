import 'package:flutter/material.dart';
import 'package:school_diary/pages/teacher_pages/TeachersHome.dart';

class TeachersProfileMenu extends StatefulWidget{

  const TeachersProfileMenu({super.key});

  @override
  State<TeachersProfileMenu> createState() => _TeachersProfileMenuState();
}

class _TeachersProfileMenuState extends State<TeachersProfileMenu> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('VibeTime Күндөлүк'),
        centerTitle: true,
      ),
      body: Text('Teachers Profile'),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          if (index == 0) {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => TeachersHome()),
            );
          } else if (index == 1) {
            // Navigator.pushReplacement(
            //   context,
            //   MaterialPageRoute(builder: (context) => TeachersProfileMenu()),
            // );
          }
        },
        currentIndex: 2,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.format_list_numbered),
            label: 'Расписание',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.fact_check),
            label: 'Итоговые',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Профиль',
          ),
        ],
      ),
    );
  }

}