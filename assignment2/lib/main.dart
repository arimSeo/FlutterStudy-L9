import 'package:assignment2/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'bottom_navigator.dart';
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
      home: BottomBar(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Images> images = [
    Images.fromMap({'poster': '펭수.png'}),
    Images.fromMap({'poster': '펭수.png'}),
    Images.fromMap({'poster': '펭수.png'}),
    Images.fromMap({'poster': '펭수.png'})
  ]; //모델부분

  //circle img
  // List<Widget> circles = [
  List circles = [
    '펭수.png'
    // Image.asset('images/펭수.png'),
    // Image.asset('images/펭수.png'),
    // Image.asset('images/펭수.png'),
    // Image.asset('images/펭수.png'),
    // Image.asset('images/펭수.png'),
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 15,
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              height: 120,
              width: 400,
              color: Colors.blue[900],
              child: Text('캐러셀 슬라이드')),
          // CarouselImage(
          //   images: images,
          // ),
          Padding(
            padding: EdgeInsets.only(top: 20, left: 11),
            child: Text('AA에서 진행되었던 컨설팅들을 볼 수 있어요',
                style: TextStyle(
                  color: Colors.blue[900],
                  fontWeight: FontWeight.w600,
                )),
          ),
          Padding(
            padding: EdgeInsets.only(left: 10, right: 10, bottom: 0),
            child: Divider(
              thickness: 0.5,
              color: Colors.blueGrey[200],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                width: 325,
                child: TextField(
                  decoration: InputDecoration(hintText: 'Search'),
                  autofocus: false,
                ),
              ),
              IconButton(
                icon: Icon(Icons.search, color: Colors.blue[900]),
                onPressed: () {},
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),
//아이콘10개 두줄 배치
          Padding(
            padding: EdgeInsets.only(left: 40, right: 40),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Column(children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.headphones,
                      color: Colors.blue[900],
                    ),
                  ),
                  Text(
                    '음악',
                    style: TextStyle(fontSize: 10, color: Colors.black54),
                  )
                ]),
                Column(children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.laptop,
                      color: Colors.blue[900],
                    ),
                  ),
                  Text(
                    'IT/프로그래밍',
                    style: TextStyle(fontSize: 10, color: Colors.black54),
                  )
                ]),
                Column(children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.menu_book,
                      color: Colors.blue[900],
                    ),
                  ),
                  Text(
                    '법률',
                    style: TextStyle(fontSize: 10, color: Colors.black54),
                  ),
                ]),
                Column(children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.business,
                      color: Colors.blue[900],
                    ),
                  ),
                  Text(
                    '비즈니스',
                    style: TextStyle(fontSize: 10, color: Colors.black54),
                  ),
                ]),
                Column(children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.attach_money,
                      color: Colors.blue[900],
                    ),
                  ),
                  Text(
                    '재무',
                    style: TextStyle(fontSize: 10, color: Colors.black54),
                  ),
                ]),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 40, right: 40, bottom: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly, //같은 간격조절 +중앙 위치
              children: <Widget>[
                Column(children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.image,
                      color: Colors.blue[900],
                    ),
                  ),
                  Text(
                    '디자인',
                    style: TextStyle(fontSize: 10, color: Colors.black54),
                  ),
                ]),
                Column(children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.people,
                      color: Colors.blue[900],
                    ),
                  ),
                  Text(
                    '마케팅',
                    style: TextStyle(fontSize: 10, color: Colors.black54),
                  ),
                ]),
                Column(children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.flight,
                      color: Colors.blue[900],
                    ),
                  ),
                  Text(
                    '여행',
                    style: TextStyle(fontSize: 10, color: Colors.black54),
                  ),
                ]),
                Column(children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.translate,
                      color: Colors.blue[900],
                    ),
                  ),
                  Text(
                    '언어',
                    style: TextStyle(fontSize: 10, color: Colors.black54),
                  ),
                ]),
                Column(children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.health_and_safety,
                      color: Colors.blue[900],
                    ),
                  ),
                  Text(
                    '건강',
                    style: TextStyle(fontSize: 10, color: Colors.black54),
                  ),
                ]),
              ],
            ),
          ),

//컨설턴트
          SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
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
                    thickness: 0.5,
                    color: Colors.blueGrey[200],
                  ),
                ),
                Row(
                  children: <Widget>[
                    // Padding(
                    //     padding: EdgeInsets.fromLTRB(20, 6, 6, 6),
                    //     child: CircleAvatar(
                    //       backgroundImage: AssetImage('images/달수.jpg'),
                    //     )),
                    // Column(
                    //     crossAxisAlignment: CrossAxisAlignment.start,
                    //     children: [
                    //       Text('최승훈', style: TextStyle(fontSize: 12)),
                    //       Text('마케팅', style: TextStyle(fontSize: 12))
                    //     ]),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Padding(
                        padding: EdgeInsets.fromLTRB(20, 6, 6, 6),
                        child: CircleAvatar(
                          backgroundImage: AssetImage('images/당근.gif'),
                        )),
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('강나영', style: TextStyle(fontSize: 12)),
                          Text('경영', style: TextStyle(fontSize: 12))
                        ]),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Padding(
                        padding: EdgeInsets.fromLTRB(20, 6, 6, 6),
                        child: CircleAvatar(
                          backgroundImage: AssetImage('images/사자.jpg'),
                        )),
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('이창민', style: TextStyle(fontSize: 12)),
                          Text('비즈니스', style: TextStyle(fontSize: 12))
                        ]),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Padding(
                        padding: EdgeInsets.fromLTRB(20, 6, 6, 6),
                        child: CircleAvatar(
                          backgroundImage: AssetImage('images/춘식1.jpg'),
                        )),
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('유상공원', style: TextStyle(fontSize: 12)),
                          Text('교수님이 왜 여기에...?', style: TextStyle(fontSize: 12))
                        ]),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Padding(
                        padding: EdgeInsets.fromLTRB(20, 6, 6, 6),
                        child: CircleAvatar(
                          backgroundImage: AssetImage('images/ar.png'),
                        )),
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('스아림', style: TextStyle(fontSize: 12)),
                          Text('환경미화', style: TextStyle(fontSize: 12))
                        ]),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Padding(
                        padding: EdgeInsets.fromLTRB(20, 6, 6, 6),
                        child: CircleAvatar(
                          backgroundImage: AssetImage('images/펭수.jpeg'),
                        )),
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('최가연', style: TextStyle(fontSize: 12)),
                          Text('이쁘니', style: TextStyle(fontSize: 12))
                        ]),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // List<Widget> makeCircleImages(BuildContext context) {
  //   List<Widget> results = [];
  //   for (var i = 0; i < circles.length; i++) {
  //     results.add(
  //       Row(
  //         children: <Widget>[
  //           Padding(
  //               padding: EdgeInsets.fromLTRB(20, 6, 6, 6),
  //               child: CircleAvatar(
  //                 backgroundImage:
  //                     AssetImage('images/' + circles[i].toString()),
  //               )),
  //         ],
  //       ),
  //     );
  //   }
  //   return results;
  // }
}
