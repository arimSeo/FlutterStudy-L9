import 'package:assignment2/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'model/model.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Assignment 2',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Images> images = [
    Images.fromMap({'poster': 'logo.png'}),
    Images.fromMap({'poster': 'logo.png'}),
    Images.fromMap({'poster': 'logo.png'}),
    Images.fromMap({'poster': 'logo.png'})
  ]; //모델부분

  //circle img
  // List<Widget> circles = [
  List circles = [
    'logo.png'
    // Image.asset('images/logo.png'),
    // Image.asset('images/logo.png'),
    // Image.asset('images/logo.png'),
    // Image.asset('images/logo.png'),
    // Image.asset('images/logo.png'),
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // CarouselImage(
          //   images: images,
          // ),
          Padding(
            padding: EdgeInsets.only(left: 11),
            child: Text('AA에서 진행되었던 컨설팅들을 볼 수 있어요',
                style: TextStyle(
                  color: Colors.blue[900],
                  fontWeight: FontWeight.w600,
                )),
          ),
          Padding(
            padding: EdgeInsets.only(left: 10, right: 10),
            child: Divider(
              thickness: 0.3,
              color: Colors.blue[900],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                width: 400,
                child: TextField(
                  decoration: InputDecoration(hintText: 'Search'),
                ),
              ),
              IconButton(
                icon: Icon(Icons.search, color: Colors.blue[900]),
                onPressed: () {},
              )
            ],
          ),
          SizedBox(
            height: 50,
          ),
//아이콘10개 두줄 배치
          Padding(
            padding: EdgeInsets.only(left: 60, right: 60),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.headphones,
                    color: Colors.blue[900],
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.laptop,
                    color: Colors.blue[900],
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.menu_book,
                    color: Colors.blue[900],
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.business,
                    color: Colors.blue[900],
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.attach_money,
                    color: Colors.blue[900],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 60, right: 60, bottom: 35),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly, //같은 간격조절 +중앙 위치
              children: <Widget>[
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.image,
                    color: Colors.blue[900],
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.people,
                    color: Colors.blue[900],
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.flight,
                    color: Colors.blue[900],
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.translate,
                    color: Colors.blue[900],
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.health_and_safety,
                    color: Colors.blue[900],
                  ),
                ),
              ],
            ),
          ),
//컨설턴트
          Padding(
            padding: EdgeInsets.only(left: 11),
            child: Text('AA에서 활동하는 컨설턴트들이에요',
                style: TextStyle(
                  color: Colors.blue[900],
                  fontWeight: FontWeight.w600,
                )),
          ),
          Padding(
            padding: EdgeInsets.only(left: 10, right: 10),
            child: Divider(
              thickness: 0.3,
              color: Colors.blue[900],
            ),
          ),
          Container(
            child: makeCircleImages(context),
          ),
        ],
      ),
    );
  }

  List<Widget> makeCircleImages(BuildContext context) {
    List<Widget> results = [];
    for (var i = 0; i < circles.length; i++) {
      results.add(
        Row(
          children: <Widget>[
            Padding(
                padding: EdgeInsets.fromLTRB(20, 6, 6, 6),
                child: CircleAvatar(
                  backgroundImage:
                      AssetImage('images/' + circles[i].toString()),
                )),
          ],
        ),
      );
    }
    return results;
  }
}
