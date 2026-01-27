  import 'package:flutter/material.dart';
  import 'ProductDetailPage.dart';
  import 'ProductListPage.dart';
  
  class NavApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ProductListPage(),
    );
  }

}