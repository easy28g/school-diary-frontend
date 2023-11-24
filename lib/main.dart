import 'package:flutter/material.dart';
import 'package:school_diary/pages/parent_pages/ParentsHome.dart';
import 'package:school_diary/pages/student_pages/StudentsProfileMenu.dart';
import 'package:school_diary/pages/SignInDiary.dart';
import 'package:school_diary/pages/student_pages/StudentsFinalGrades.dart';
import 'package:school_diary/pages/student_pages/StudentsHome.dart';
import 'package:school_diary/pages/student_pages/HomeworkPages.dart';
import 'package:school_diary/pages/teacher_pages/TeachersHome.dart';

void main() => runApp(MaterialApp(
  theme: ThemeData(
    primaryColor: Colors.blueAccent,
  ),
  initialRoute: '/',
  routes: {
    '/': (context) => SignInDairy(),
    '/students-home': (context) => StudentsHome(),
    '/students-final-grades': (context) => StudentsFinalGrades(),
    '/profile-menu': (context) => StudentsProfileMenu(),
    '/homework-on-subject': (context) => HomeworkPages(),
    '/teachers-home': (context) => TeachersHome(),
    '/parents-home': (context) => ParentsHome(),
  },
));