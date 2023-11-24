import 'package:flutter/material.dart';

class ManagersHome extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ManagersHomeState();
}

class _ManagersHomeState extends State<ManagersHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('VibeTime Күндөлүк'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 55.0),
        child: Column(
          children: [
            // Первая строка
            Row(
              children: [
                // Первая колонка
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(8.0),
                    // width: 20.0,
                    height: 70,
                    child: ElevatedButton(
                      onPressed: () {
                        // Ваше действие при нажатии на кнопку
                      },
                      child: Text('Добавить ученика'),
                    ),
                  ),
                ),
                // Вторая колонка
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(8.0),
                    // width: 20.0,
                    height: 70,
                    child: ElevatedButton(
                      onPressed: () {
                        // Ваше действие при нажатии на кнопку
                      },
                      child: Text('Добавить учителя'),
                    ),
                  ),
                ),
              ],
            ),
            // Вторая строка
            Row(
              children: [
                // Третья колонка
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(8.0),
                    // width: 20.0,
                    height: 70,
                    child: ElevatedButton(
                      onPressed: () {
                        // Ваше действие при нажатии на кнопку
                      },
                      child: Text('Моя кнопка3'),
                    ),
                  ),
                ),
                // Четвертая колонка
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(8.0),
                    // width: 20.0,
                    height: 70,
                    child: ElevatedButton(
                      onPressed: () {
                        // Ваше действие при нажатии на кнопку
                      },
                      child: Text('Моя кнопка4'),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
