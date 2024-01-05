import 'package:flutter/material.dart';

class SelectedGroup extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _SelectedGroupState();
}

class _SelectedGroupState extends State<SelectedGroup> {
  @override
  Widget build(BuildContext context) {
    final String arguments = ModalRoute.of(context)?.settings.arguments as String;
    return Scaffold(
      appBar: AppBar(
        title: Text('VibeTime Күндөлүк'),
        centerTitle: true,
      ),
      body: Container(
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Text('${arguments}', style: TextStyle(fontSize: 20)),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(25.0, 8.0, 8.0, 8.0),
              child: Text('Фамилия Имя 1', style: TextStyle(fontSize: 20)),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(25.0, 8.0, 8.0, 8.0),
              child: Text('Фамилия Имя 2', style: TextStyle(fontSize: 20)),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(25.0, 8.0, 8.0, 8.0),
              child: Text('Фамилия Имя 3', style: TextStyle(fontSize: 20)),
            ),
          ],
        ),
      ),
    );
  }
}