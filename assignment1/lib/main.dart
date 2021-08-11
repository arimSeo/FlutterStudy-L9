import 'package:assignment1/button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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
            padding: EdgeInsets.all(80.0), //텍스트 위치 중앙으로
            child: Text('플러터로 세계정복 시작'),
          ),
        ),
        body: ScreenPage(),
      ),
    );
  }
}

//동기(Stateful)
class ScreenPage extends StatefulWidget {
  _ScreenPageState createState() => _ScreenPageState();
}

enum Choice { Yes, No }

class _ScreenPageState extends State<ScreenPage> {
  Choice _choice = Choice.No; //default로 No체크

  final _valueList1 = [
    '💎 Flutter',
    '🐾 React Native',
    '🐸 android',
    '🕊 Swift',
  ];
  var _startList1 = '💎 Flutter';
  final _valueList2 = ['1 주일', '1 개월', '1 년'];
  var _startList2 = '1 주일';

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(left: 15, top: 11),
          child: Text(
            '1. 세계정복 하기위한 분야를 선택하세요',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 25),
          child: DropdownButton(
            value: _startList1,
            items: _valueList1.map((value) {
              return DropdownMenuItem(
                value: value,
                child: Text(value),
              );
            }).toList(),
            onChanged: (value) {
              //StatefulWidget에서만 가능! -동기
              setState(() {
                _startList1 = value.toString();
              });
            },
          ),
        ),

//2번 문항
        Padding(
          padding: EdgeInsets.only(left: 15, top: 11),
          child: Text(
            '2. 원하는 세계정복 기간을 선택하세요',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 25),
          child: DropdownButton(
            value: _startList2,
            items: _valueList2.map((value) {
              return DropdownMenuItem(
                value: value,
                child: Text(value),
              );
            }).toList(),
            onChanged: (value) {
              //StatefulWidget에서만 가능! -동기
              setState(() {
                _startList2 = value.toString();
              });
            },
          ),
        ),

//3번 문항
        Padding(
          padding: EdgeInsets.only(left: 15, top: 11),
          child: Text(
            '3. 세계정복에 대한 자신감 유무를 선택하세요',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        Row(
          children: <Widget>[
            Expanded(
              child: RadioListTile(
                title: Text('있다'),
                value: Choice.Yes,
                groupValue: _choice,
                onChanged: (value) {
                  _choice = value as Choice;
                },
              ),
            ),
            SizedBox(
              width: 291,
              child: RadioListTile(
                title: Text('없다'),
                value: Choice.No,
                groupValue: _choice,
                onChanged: (value) {
                  _choice = value as Choice;
                },
              ),
            ),
          ],
        ),

//4번문항
        Padding(
          padding: EdgeInsets.only(left: 15, top: 11),
          child: Text(
            '4. 세계정복에 함께 할 인원을 선택하세요',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        Row(
          // mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(left: 25),
              child: SizedBox(
                width: 100,
                child: TextField(
                    keyboardType: TextInputType.number,
                    inputFormatters: [
                      // ignore: deprecated_member_use
                      WhitelistingTextInputFormatter(RegExp('[0-9]')),
                    ],
                    decoration: InputDecoration(hintText: '1')),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 10, right: 10),
              child: Text('~'),
            ),
            SizedBox(
              width: 100,
              child: TextField(
                keyboardType: TextInputType.number,
                inputFormatters: [
                  // ignore: deprecated_member_use
                  WhitelistingTextInputFormatter(RegExp('[0-9]')),
                ],
                decoration:
                    InputDecoration(hintText: '3'), //TODO: 힌트 텍스트 중앙배열 하는법
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 10),
              child: Text('명'),
            )
          ],
        ),

//5번문항
        Padding(
          padding: EdgeInsets.only(left: 15, top: 20),
          child: Text(
            '5. 1인당 정복시 비용의 범위를 입력하세요',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        Row(
          // mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(left: 25),
              child: SizedBox(
                width: 100,
                child: TextField(
                    keyboardType: TextInputType.number,
                    inputFormatters: [
                      // ignore: deprecated_member_use
                      WhitelistingTextInputFormatter(RegExp('[0-9]')),
                    ],
                    decoration: InputDecoration(hintText: '100')),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 10, right: 10),
              child: Text('~'),
            ),
            SizedBox(
              width: 100,
              child: TextField(
                keyboardType: TextInputType.number,
                inputFormatters: [
                  // ignore: deprecated_member_use
                  WhitelistingTextInputFormatter(RegExp('[0-9]')),
                ],
                decoration: InputDecoration(hintText: '100,000,000'),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 10),
              child: Text('원'),
            )
          ],
        ),
        Button(),
      ],
    );
  }
}
