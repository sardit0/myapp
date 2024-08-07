import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:myapp/pages/home_page.dart';
import 'package:myapp/pages/auth/login_page.dart';
import 'package:myapp/pages/auth/register_page.dart';
import 'package:myapp/container_widget.dart';
import 'package:myapp/pages/form/display_page.dart';
import 'package:myapp/pages/form/form_page.dart';
import 'package:myapp/news_container.dart';
import 'package:myapp/row_column/column_widget.dart';
import 'package:myapp/pages/counter_page.dart';
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
  Future<bool> checkLoginStatus() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString('token') != null;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Future Auth',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: FutureBuilder<bool>(
        future: checkLoginStatus(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.data == true) {
            return HomePage();
          } else {
            return LoginPage();
          }
        },
      ),
      routes: {
        '/login': (context) => LoginPage(),
        '/register': (context) => RegisterPage(),
        '/home': (context) => HomePage(),
      },
    );
  }
}

