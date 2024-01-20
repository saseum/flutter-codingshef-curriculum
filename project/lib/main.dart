// ignore_for_file: slash_for_doc_comments, prefer_const_constructors

import 'package:flutter/material.dart'; // 첫번째: library import 과정

/**
   * main() 은 app 의 시작점
   * compiler 가 computer 가 이해할 수 있는 작업 시작 시 해당 main() 함수 가장 먼저 참조
   * runApp 함수는 최상위 함수고, widget 을 arg 로 가져야 함.
   * 
   * MyApp() 
   * - custom widget.
   * - Screen layout 최초로 빌드 역할 ==> 어떤 움직임이나 변화없는 정적 위젯
   */
void main() => runApp(MyApp());

/**
 * stl => stateless widget 
 */
class MyApp extends StatelessWidget {
  const MyApp({super.key});

/**
 * 모든 custom widget 은 또 다른 widget 을 return 하는 build 라는 함수를 가지고 있음
 * MaterialApp 이 실질적으로 모든 widgets 을 감싸고 있다고 보면 됨
 * Flutter 의 모든 widget 들을 args 를 가진다고 생각하면 됨
 */
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'First App', // App 을 총칭하는 이름
      theme: ThemeData(
        // app 기본적 design theme 지정
        primarySwatch: Colors
            .blue, // swatch: 견본, app 에서 사용할 기본적 색상 견본 사용. 특정 색의 음영들을 기본 색상으로 지정
      ),
      home: MyHomePage(), // app 이 정상적으로 실행됐을 때 가장 먼저 화면에 띄워주는 경로
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // 뼈대, 빈 도화지, Scaffold 가 있어야 앱 화면에 배치 가능
      appBar: AppBar(
        title: const Text('First app'), // App 화면 appBar title 에 출력되는 이름
        backgroundColor: Colors.blue,
      ),
      body: Center(
          // 정중앙 배치 widget
          child: Column(
        // 자신의 위젯 내 모든 요소들을 세로로 배치하는 기능
        // ignore: prefer_const_literals_to_create_immutables
        children: <Widget>[
          // flutter 에선 한 위젯이 끝나면 반드시 쉼표(,) 로 구분해줘야 함
          Text('Hello'),
          Text('World'),
          Text('Jonghwa'),
        ],
      )),
    );
  }
}
