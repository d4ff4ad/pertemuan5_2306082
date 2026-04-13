import 'package:flutter/material.dart';



class SecondPage extends StatelessWidget{
  final String name;
  final int price;
  final String imageUrl;
  final String description;

  const SecondPage({
    required this.name,
    required this.price,
    required this.imageUrl,
    required this.description,
  });
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Halaman Kedua",style: TextStyle(color: Colors.white),),
        backgroundColor: const Color.fromARGB(255, 49, 55, 59),
      ),
      body: Column(
        crossAxisAlignment: .start,
        children: [
          Image.network(imageUrl),
          Text(name, style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
          Text('Rp. $price', style: TextStyle(fontSize: 18, color: Colors.grey)),
          Text(
            description,
            style: TextStyle(fontSize: 16
            )),
        ],
      ),
    );
  }
}