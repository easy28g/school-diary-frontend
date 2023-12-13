import 'package:flutter/material.dart';

import 'ManagersHome.dart';

class Item {

  Item({
    required this.headerText,
    required this.expandedText,
    this.isExpanded = false,
  });

  String headerText;
  Widget expandedText;
  bool isExpanded;

}

class ListGroups extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ListGroupsState();
}

class _ListGroupsState extends State<ListGroups> {


  final List<Item> _data = List<Item>.generate(11, (index) {
      return Item(
        headerText: '${index + 1} Класс',
        expandedText: ListView(
          shrinkWrap: true,
          children: [
            ListTile(
              title: Text('A'),
              subtitle: Text('Количество: 35'),
            ),
            ListTile(
              title: Text('Б'),
              subtitle: Text('Количество: 34'),
            ),
            ListTile(
              title: Text('В'),
              subtitle: Text('Количество: 34'),
            ),
            ListTile(
              title: Text('Г'),
              subtitle: Text('Количество: 35'),
            ),
          ],
        ),
      );
    },
  );

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Список классов'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: ExpansionPanelList(
          expansionCallback: (int index, bool isExpanded) {
            setState((){
              _data[index].isExpanded = isExpanded;
            });
          },
          children: _data.map<ExpansionPanel>((Item item) {
            return ExpansionPanel(
              headerBuilder: (BuildContext context, bool isExpanded){
                return ListTile(
                  title: Text(item.headerText),
                );
              },
              body: ListTile(
                title: item.expandedText,
              ),
              isExpanded: item.isExpanded,
            );
          }).toList(),
        ),
      ),
    );
  }
}