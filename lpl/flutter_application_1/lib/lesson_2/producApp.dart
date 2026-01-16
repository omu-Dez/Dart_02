import 'package:flutter_application_1/lesson_2/productCard.dart';
import 'main.dart';
import 'package:flutter/material.dart';
import 'constants.dart';


class ProducApp extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
  return MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      backgroundColor: const Color.fromARGB(255, 1, 79, 144),
      appBar: AppBar(
        title: Text(
          'Услуги'
        ),
        backgroundColor: const Color.fromARGB(255, 40, 90, 228),
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
                      image: "images/ev-01.jpg",
                      title: "tow truck",
                      price: "3000 сом",
                      category: 'Car', 
                      rating: 5,
                      sale: true,
                    ),
                  ),
                  SizedBox(width: 12),
                  Expanded(
                    child: ProductCard(
                      image: "images/ev-02.jpg",
                      title: "tow truck",
                      price: "2000 сом", 
                      category: 'Car', 
                      rating: 4,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16),
              Row(
                children: [
                  Expanded(
                    child: ProductCard(
                      image: "images/ev-03.jpg",
                      title: "tow truck",
                      price: "2000 сом",
                      category: 'Car', 
                      rating: 5,
                      sale: true,
                    ),
                  ),
                  SizedBox(width: 12),
                  Expanded(
                    child: ProductCard(
                      image: "images/.jpg",
                      title: "Smart Watch",
                      price: "\$150",
                      category: 'Car', 
                      rating: 3,
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
