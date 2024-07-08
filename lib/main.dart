import 'package:flutter/material.dart';
import 'package:myapp/container_widget.dart';
import 'package:myapp/news_container.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Text('Anjayyy Flutter'),
          centerTitle: true,
          backgroundColor: Colors.greenAccent,
        ),
        body: NewsContainer(),
      ),
    );
  }
}

class TextWidget extends StatelessWidget {
  const TextWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Hello Dunia',
        style: TextStyle(
            fontSize: 30,
            color: Colors.white,
            fontWeight: FontWeight.bold,
            backgroundColor: Colors.black26),
      ),
    );
  }
}