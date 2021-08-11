import 'package:flutter/material.dart';

class Button extends StatefulWidget {
  @override
  _ButtonState createState() => _ButtonState();
}

class _ButtonState extends State<Button> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: EdgeInsets.only(top: 50),
        child: Align(
          alignment: Alignment.center,
          child: SizedBox(
            width: 200,
            child: ElevatedButton(
              //TODO: 그라데이션 버튼 색깔
              child: Text('Start'),
              onPressed: () {},
            ),
          ),
        ),
      ),
    );
  }
}
