import 'package:flutter/material.dart';
import 'second_page.dart';
import 'home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  final String name = "Baju";
  final int price = 100000;
  final String imageUrl =
      "https://images.voila.id/pr:sharp/rs:fit:2048:0/plain/https%3A%2F%2Fassets.voila.id%2Fvoila%2Fimages%2Fproduct%2Fgucci%2F3product-814273-XKEJP-1070-Xms-2024-12-27T1550520700.jpeg@webp";
  final String description = "Baju yang nyaman dipakai";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(
          name: name,
          price: price,
          imageUrl: imageUrl,
          
        ),
        '/second': (context) => SecondPage(
          name: name,
          price: price,
          imageUrl: imageUrl,
          description: description,
        ),
      },
    );
  }
}
