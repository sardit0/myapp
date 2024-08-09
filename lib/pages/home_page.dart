import 'package:flutter/material.dart';
import 'package:myapp/pages/auth/login_page.dart';
import 'package:myapp/pages/kategori/list_kategori_page.dart';
import 'package:myapp/pages/services/auth_service.dart';

class HomePage extends StatelessWidget {
  final AuthService _authService = AuthService();

  void _logout(BuildContext context) async {
    await _authService.logout();
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => LoginPage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        actions: [
          IconButton(
            icon: Icon(Icons.logout),
            onPressed: () => _logout(context),
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
          'Welcome to Home Page!',
          style: TextStyle(fontSize: 24),
        ),
        SizedBox(height: 20),
        ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => KategoriPage()),
            );
          },
          child: Text('Kategori'),
        ),
      ],
    )
      ),
    );
  }
}
