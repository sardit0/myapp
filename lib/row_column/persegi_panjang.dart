import 'package:flutter/material.dart';

class Panjang extends StatelessWidget {
  const Panjang({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 100,
      color: Colors.grey,
      child: const Text(
        'Ini Persegi Panjang',
        style: TextStyle(
          fontSize: 20,
        ),
      ),
    );
  }
}
