import 'package:flutter_application_1/lesson_2/productCard.dart';
import 'main.dart';
import 'package:flutter/material.dart';

class ProducApp extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
  return MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      appBar: AppBar(
        title: Text(
          'Услуги'
        ),
        backgroundColor: Colors.amber,
        centerTitle: true,
      ),
      body: Padding(
        padding:EdgeInsets.all(20),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: ProductCard(
                  image: 'images/q.jpg',
                  title: 'Nika Ari MAx',
                  price: '\$120',
                  sale: true,
                  ),
                ),
                SizedBox(width: 12),
                Expanded(
                  child: ProductCard(
                    image: 'images/w.jpg', 
                    title: 'Leather Bag', 
                    price: '\$200'
                    ), 
                ),
                SizedBox(width: 12),
                Expanded(
                  child: ProductCard(
                    image: 'images/e.jpg', 
                    title: 'Headphones', 
                    price: '\$220'
                    ), 
                ),
                
                ),
              ],
            ),
          ],
        ),
        ),
    ),

  );
  }
}