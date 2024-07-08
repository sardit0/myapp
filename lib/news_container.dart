import 'package:flutter/material.dart';

class NewsContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
// Suggested code may be subject to a license. Learn more: ~LicenseLog:3695708665.
      width: double.infinity,
      padding: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Container(
        child: Stack(
          children: [
            Positioned(
              top: 0,
              right: 0,
              left: 0,
              child: Container(
                height: 200.0,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTrrSeED_hGhTydZeXpT2AS7VAtSjG-bUWFkw&s'),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
            ),
            Positioned(
              top: 220,
              left: 0,
              right: 0,
              child: Text(
                'Lorem Ipsum',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.orange
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Positioned(
              top: 260,
              left: 0,
              right: 0,
              child: Text(
                'Lorem ipsum dolor sit amet consectetur adipisicing elit. Accusantium dicta facere ipsa, atque porro labore corporis dolore voluptatem perspiciatis fuga totam, saepe necessitatibus consectetur officiis doloribus magni, odio culpa ipsum.',
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.orange,
                ),
                textAlign: TextAlign.justify,
              ),
            ),
          ],
        ),
      ),
    );
  }
}