import 'package:flutter/material.dart';

class AdminsHome extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _AdminsHomeState();
}

class _AdminsHomeState extends State<AdminsHome> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('VibeTime Күндөлүк'),
        centerTitle: true,
      ),
      body: Text('AdminsHome'),
    );
  }
}