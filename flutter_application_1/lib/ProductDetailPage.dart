import 'package:flutter/material.dart';

import 'ProductListPage.dart';
import 'nav.dart';
import 'ord.dart';
import 'main.dart';

class ProductDetailPage extends StatelessWidget {
  final String title;
  final String desc;
  final String imageUrl;

  ProductDetailPage({
    required this.title,
    required this.desc,
    required this.imageUrl,
  });
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(imageUrl, height: 200, fit: BoxFit.cover),
            const SizedBox(height: 12),
            SizedBox(height: 16),
            Text(desc),
            SizedBox(height: 16),

            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                child: Text('Купить'),
                onPressed: () {
                  Navigator.push(
                    context, 
                    MaterialPageRoute(
                      builder: (_) => OrderPage(ProductTitel: title,),
                      ),
                      );
                }, 
                
              ),

            )
          ],
        ),),
    );
  }

  
}