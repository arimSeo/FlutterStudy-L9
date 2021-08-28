import 'package:assignment2/main.dart';
import 'package:flutter/material.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 4,
        child: Scaffold(
          body: TabBarView(
            children: [
              MyHomePage(),
              Center(child: Text('My 컨설팅')),
              Center(child: Text('커뮤니티')),
              Center(child: Text('내 정보'))
            ],
          ),
          bottomNavigationBar: Container(
            height: 60,
            color: Colors.blue[900],
            child: TabBar(
              labelColor: Colors.white,
              indicatorSize: TabBarIndicatorSize.label,
              indicatorColor: Colors.white,
              indicatorWeight: 3,
              unselectedLabelColor: Colors.white54,
              tabs: [
                Tab(
                  icon: Icon(
                    Icons.home,
                    color: Colors.white,
                    size: 19,
                  ),
                  text: '메인',
                ),
                Tab(
                    icon: Icon(
                      Icons.library_books,
                      color: Colors.white,
                      size: 18,
                    ),
                    text: 'My 컨설팅'),
                Tab(
                    icon: Icon(
                      Icons.account_balance,
                      color: Colors.white,
                      size: 18,
                    ),
                    text: '커뮤니티'),
                Tab(
                    icon: Icon(
                      Icons.person_pin,
                      color: Colors.white,
                      size: 20,
                    ),
                    text: '내 정보'),
              ],
              labelStyle: TextStyle(fontSize: 10),
            ),
          ),
        ),
      ),
    );
  }
}
