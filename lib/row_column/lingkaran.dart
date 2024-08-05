import 'package:flutter/material.dart';

class Lingkaran extends StatelessWidget {
  const Lingkaran({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 100,
      color: Colors.grey,
      child: const Text(
        'Ini Lingkaran',
        style: TextStyle(
          fontSize: 20,
        ),
      ),
    );
  }
}
