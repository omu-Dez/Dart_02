import 'package:flutter/material.dart';
import 'ProductDetailPage.dart';
import 'ProductListPage.dart';
import 'main.dart';
import 'nav.dart';
import 'Order.dart';


class OrderPage extends StatelessWidget{
  final String ProductTitel;

  OrderPage({
    required this.ProductTitel
  });
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Заказ и оплата'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Ваш заказ', 
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
            ),
            SizedBox(height: 8),

            Text(ProductTitel),

            SizedBox(height: 15),
            Text('Способ оплаты',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            ListTile(
              leading: Icon(Icons.credit_card),
              title: Text('Банковская карта'),
            ),
            ListTile(
              leading: Icon(Icons.account_balance_wallet),
              title: Text('Электроный кошелёк'),
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                child: Text('Оплачена'),
                onPressed: () {
  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (_) => Order(productTitle: ProductTitel),
    ),
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