import 'package:flutter/material.dart';
import 'constants.dart';

class ProductCard extends StatelessWidget {
  final String image;
  final String title;
  final String price;
  final String category;
  final bool sale;
  final int rating;

  const ProductCard({
    super.key,
    required this.image,
    required this.title,
    required this.price,
    this.sale = false, 
    required this.category, 
    required this.rating, 
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 8),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.blue.shade100,
        borderRadius: BorderRadius.circular(16),
        boxShadow: const [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 6,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(
                  image,
                  height: imageHeight,//тут 4 задание
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),

              if (sale)
                Positioned(
                  top: 8,
                  left: 8,
                  child: Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 255, 0, 0),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: const Text(
                      'SALE',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
            ],
          ),

          const SizedBox(height: 10),

          Row(
            children: [
              Flexible(child: Text(
                title,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                maxLines: 1,
                overflow: TextOverflow.visible,
                softWrap: true,
              ),
              ),
              Spacer(),
              Text(
                price,
                style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          
          SizedBox(height: 6),
          Align(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: ElevatedButton(
              onPressed: (){},
              child: Text('Order')),
            ),
          ),
          SizedBox(height: 6),
          Align(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: ElevatedButton(
              onPressed: (){},
              child: Text('В избранное')),
            ),
          ),

          SizedBox(height: 6),
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              padding:
                  const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Text(
                category,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                ),
              ),
            ),
          ),
          
          Row(
            children: List.generate(
              5,
              (index) => Icon( 
                index < rating ? Icons.star : Icons.star_border, 
                size: 16, color: const Color.fromARGB(255, 255, 225, 0), 
                ),
            )
          )
        ],
      ),
    );
  }
}
