import 'package:flutter/material.dart';

class AssignGradeToStudent extends StatefulWidget {
  const AssignGradeToStudent({super.key});

  @override
  State<AssignGradeToStudent> createState() => _AssignGradeToStudentState();
}

class _AssignGradeToStudentState extends State<AssignGradeToStudent> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('VibeTime Күндөлүк'),
        centerTitle: true,
      ),
      body: Text('AssignGradeToStudent'),
    );
  }

}