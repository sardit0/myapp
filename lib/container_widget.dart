import 'package:flutter/material.dart';

class ContainerWidget extends StatelessWidget {
  const ContainerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        height: double.infinity,
        padding: EdgeInsets.all(10),
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: Colors.black,
            width: 2,
          ),
        ),
        child: Container(
          width: double.infinity,
          height: 100,
          padding: EdgeInsets.only(left: 10, top: 10),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTrrSeED_hGhTydZeXpT2AS7VAtSjG-bUWFkw&s'),
              fit: BoxFit.cover,
            ),
          ),
        ));
  }
}