import 'package:flutter/material.dart';
import 'package:school_diary/pages/ProfileMenu.dart';
import 'package:school_diary/pages/SignInDiary.dart';
import 'package:school_diary/pages/StudentsFinalGrades.dart';
import 'package:school_diary/pages/StudentsHome.dart';
import 'package:school_diary/pages/HomeworkPages.dart';
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
    '/profile-menu': (context) => ProfileMenu(),
    '/homework-on-subject': (context) => HomeworkPages(),
    '/teachers-home': (context) => TeachersHome(),
  },
));