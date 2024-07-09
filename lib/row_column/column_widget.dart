import 'package:flutter/material.dart';

class BelajarColumn extends StatelessWidget {
  const BelajarColumn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('Ini Text 1'),
        Text('Ini Text 2'),
        Text('Ini Text 3'),
      ],
    );
  }
}