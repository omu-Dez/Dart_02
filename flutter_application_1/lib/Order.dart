
import 'package:flutter/material.dart';
import 'ProductDetailPage.dart';
import 'ProductListPage.dart';
import 'nav.dart';


class Order extends StatelessWidget {
  final String productTitle;

  Order({
    required this.productTitle,
  });
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Потверждение перевода'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Номер заказ',   
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
            ),
            SizedBox(height: 16),

            Text(productTitle),

            SizedBox(height: 16),
            Center(
              child: Icon(
                Icons.check_circle,
                color: Colors.green,
                size: 80,
              ),
            ),
            SizedBox(height: 16),
            
          Center(
            child: Text('Oплаты прошла успешна!',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold),
            ),
            ),
            SizedBox(height: 16),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                child: Text('Вернуться в каталог'),
                onPressed: () {
                  Navigator.popUntil(
                      context,
                      (route) => route.isFirst,
                    );
                },
                ),
            ),
            ],
      ),
      
      ),
    );
}
}