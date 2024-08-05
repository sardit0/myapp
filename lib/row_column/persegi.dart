import 'package:flutter/material.dart';

class Persegi extends StatelessWidget {
  const Persegi({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 100,
      color: Colors.grey,
      child: const Text(
        'Ini Persegi',
        style: TextStyle(
          fontSize: 20,
        ),
      ),
    );
  }
}
