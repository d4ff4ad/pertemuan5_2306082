import 'package:flutter/material.dart';



class HomePage extends StatelessWidget {
  final String name;
  final int price;
  final String imageUrl;
  

  const HomePage({
    required this.name,
    required this.price,
    required this.imageUrl,
    
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Halaman utama', style: TextStyle(color: Colors.white),),
      backgroundColor: const Color.fromARGB(255, 49, 55, 59),
      ),
      body: Column(
        crossAxisAlignment: .start,
        children: [
          Image.network(imageUrl, width:200, height:300, fit: BoxFit.cover),
          Text(name, style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
          Text('Rp. $price', style: TextStyle(fontSize: 18, color: Colors.grey)),
          Text(
            name,
            style: TextStyle(fontSize: 16
            )),
            SizedBox(height: 20),
            ElevatedButton(
              child: Text('Lihat Detail',style: TextStyle(color: const Color.fromARGB(255, 61, 14, 14)),),
              onPressed: () {
                Navigator.pushNamed(context, '/second');
              },
              ),


        
        ],
      )
    );
  }
}
