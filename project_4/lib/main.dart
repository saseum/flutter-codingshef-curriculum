// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_print, slash_for_doc_comments

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Appbar',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: MyPage(),
    );
  }
}

/**
 *  Appbar Icon Button
 * 1. leading : 아이콘 버튼이나 간단한 위젯을 왼쪽에 배치할 때
 * 2. actions : 복수의 아이콘 버튼 등을 오른쪽에 배치할 때
 * 3. onPressed : 함수의 형태로 일반 버튼이나 아이콘 버튼을 터치했을 때 일어나는 이벤트 정의하는 영역
 */
class MyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Scaffold 위젯은 부모인 MyPage 의 context 를 그대로 물려받는 의미
    return Scaffold(
      appBar: AppBar(
        title: Text('Appbar icon menu'),
        backgroundColor: Colors.amber,
        centerTitle: true,
        elevation: 0.0,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {
              print('Shopping cart button is clicked.');
            },
          ),
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              print('Search button is clicked.');
            },
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('assets/chari.jpeg'),
                backgroundColor: Colors.black,
              ),
              otherAccountsPictures: [
                CircleAvatar(
                  backgroundImage: AssetImage('assets/chari2.png'),
                  backgroundColor: Colors.black,
                ),
                // CircleAvatar(
                //   backgroundImage: AssetImage('assets/chari2.png'),
                //   backgroundColor: Colors.black,
                // ),
              ],
              accountName: Text('Jonghwa'),
              accountEmail: Text('dvlpjh@gmail.com'),
              onDetailsPressed: () {
                print('arrow is clicked.');
              },
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(40.0),
                  bottomRight: Radius.circular(40.0),
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.home,
                color: Colors.grey[850],
              ),
              title: Text('Home'),
              onTap: () {
                print('Home is clicked.');
              },
              trailing: Icon(Icons.add),
            ),
            ListTile(
              leading: Icon(
                Icons.settings,
                color: Colors.grey[850],
              ),
              title: Text('Setting'),
              onTap: () {
                print('Setting is clicked.');
              },
              trailing: Icon(Icons.add),
            ),
            ListTile(
              leading: Icon(
                Icons.question_answer,
                color: Colors.grey[850],
              ),
              title: Text('QnA'),
              onTap: () {
                print('QnA is clicked.');
              },
              trailing: Icon(Icons.add),
            ),
          ],
        ),
      ),
    );
  }
}
