import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('HelloRectangle'),
        ),
        body: HelloRectangle(),
      ),
    ),
  );
}

class HelloRectangle extends StatelessWidget {  // StatelessWidgetを継承

  @override
  Widget build(BuildContext context) {
    return Center(  //Centerウィジェットを親要素に追加して四角いウィジェットを中央に配置
      child: Container( //子要素に四角いのを指定
        color: Colors.blueAccent,
        height: 400.0,
        width: 300.0,
        child: Center(
          child: Text(
            'Hello!',
            style: TextStyle( fontSize: 40.0 ),
          ),
        ),
      ),
    );
  }
}