import 'package:flutter/material.dart';

import 'AddManagerSchool.dart';

class SelectedSchoolRegion extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _SelectedSchoolRegionState();
}

class _SelectedSchoolRegionState extends State<SelectedSchoolRegion> {
  @override
  Widget build(BuildContext context) {
    final String arguments = ModalRoute.of(context)?.settings.arguments as String;
    return Scaffold(
      appBar: AppBar(
        title: Text('Список школ'),
        centerTitle: true,
      ),
      body: Container(
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Text('$arguments', style: TextStyle(fontSize: 20)),
                ],
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AddManagerSchool(),
                    settings: RouteSettings(
                      arguments: '№61 Гимназия'),
                  ),
                );
              },
              child: ListTile(
                title: Text('№61 Гимназия', style: TextStyle(fontSize: 20)),
                subtitle: Text('ул.Ахунбаева', style: TextStyle(fontSize: 16)),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AddManagerSchool(),
                    settings: RouteSettings(arguments: '№64 Гимназия'),
                  ),
                );
              },
              child: ListTile(
                title: Text('№64 Гимназия', style: TextStyle(fontSize: 20)),
                subtitle: Text('Октябрьский р-н, ул.Камская',
                    style: TextStyle(fontSize: 16)),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AddManagerSchool(),
                    settings: RouteSettings(arguments: '№28 Лицей'),
                  ),
                );
              },
              child: ListTile(
                title: Text('№28 Лицей', style: TextStyle(fontSize: 20)),
                subtitle: Text('Первомайский р-н, ул.Боконбаева',
                    style: TextStyle(fontSize: 16)),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AddManagerSchool(),
                    settings: RouteSettings(arguments: '№58 Гимназия'),
                  ),
                );
              },
              child: ListTile(
                title: Text('№58 Гимназия', style: TextStyle(fontSize: 20)),
                subtitle: Text('Ленинский р-н, ул.Западная',
                    style: TextStyle(fontSize: 16)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}