import 'package:flutter/material.dart';
import 'package:myapp/container_widget.dart';
import 'package:myapp/form/display_page.dart';
import 'package:myapp/form/form_page.dart';
import 'package:myapp/news_container.dart';
import 'package:myapp/row_column/column_widget.dart';
import 'package:myapp/row_column/counter_page.dart';
import 'package:myapp/row_column/kerucut.dart';
import 'package:myapp/row_column/latihan.dart';
import 'package:myapp/row_column/lingkaran.dart';
import 'package:myapp/row_column/row_widget.dart';
import 'package:myapp/row_column/persegi.dart';
import 'package:myapp/row_column/persegi_panjang.dart';
import 'package:myapp/row_column/segitiga.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text('Si Flutter'),
          centerTitle: true,
          backgroundColor: Colors.pinkAccent,
        ),
        // body: Column (
        //   children: [
        //  Persegi(),
        //  Panjang(),
        //  Lingkaran(),
        //  Kerucut(),
        //  Segitiga(),
        //  DisplayPage(),
        //   ],
        // ),
        body: 
        FormPage(),
      ),
    );
  }
}

class DisplayPage extends StatelessWidget {
  const DisplayPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return DisplayPage();
  }
}