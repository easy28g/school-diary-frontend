import 'package:flutter/material.dart';

import 'SelectedGroup.dart';

class ListGroups extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ListGroupsState();
}

class _ListGroupsState extends State<ListGroups> {

  @override
  Widget build(BuildContext context){
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
                  Text('Список классов', style: TextStyle(fontSize: 20)),
                ],
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SelectedGroup(),
                    settings: RouteSettings(
                      arguments: 'Класс 10А',
                    )
                  ),
                );
              },
              child: Padding(
                padding: const EdgeInsets.fromLTRB(25.0, 8.0, 8.0, 8.0),
                child: Text('Класс 10А', style: TextStyle(fontSize: 20)),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SelectedGroup(),
                      settings: RouteSettings(
                        arguments: 'Класс 10Б',
                      )
                  ),
                );
              },
              child: Padding(
                padding: const EdgeInsets.fromLTRB(25.0, 8.0, 8.0, 8.0),
                child: Text('Класс 10Б', style: TextStyle(fontSize: 20)),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SelectedGroup(),
                      settings: RouteSettings(
                        arguments: 'Класс 10В',
                      )
                  ),
                );
              },
              child: Padding(
                padding: const EdgeInsets.fromLTRB(25.0, 8.0, 8.0, 8.0),
                child: Text('Класс 10В', style: TextStyle(fontSize: 20)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}