import 'package:flutter/material.dart';

void main() {
  runApp(Assignment1());
}

class Assignment1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WEEK 1 -과제1',
      theme: ThemeData(primaryColor: Colors.white),
      home: Scaffold(
        appBar: AppBar(
          title: Padding(
            padding: EdgeInsets.all(100.0), //텍스트 위치 중앙으로
            child: Text('플러터로 세계정복 시작'),
          ),
        ),
        body: ScreenPage(),
      ),
    );
  }
}

class ScreenPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text('1. 세계정복 분야'),
      ],
    );
  }
}
