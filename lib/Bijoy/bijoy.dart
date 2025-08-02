import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: SalePage(),
  ));
}

class SalePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('On sale'),
        actions: [
          TextButton(
            onPressed: () {},
            child: Text(
              'Show all',
              style: TextStyle(color: Colors.black),
            ),
          )
        ],
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            buildProductCard(
              imageUrl: 'https://cdn-icons-png.flaticon.com/512/415/415733.png',
              name: 'Oranges',
              oldPrice: '\$3',
              newPrice: '\$2',
              unit: '1 pc',
              discount: '-30%',
              isFavorite: true,
            ),
            SizedBox(width: 16),
            buildProductCard(
              imageUrl: 'https://cdn-icons-png.flaticon.com/512/415/415682.png',
              name: 'Watermelon',
              oldPrice: '\$6',
              newPrice: '\$5',
              unit: '100g',
              discount: '-10%',
              isFavorite: false,
            ),
          ],
        ),
      ),
    );
  }

  Widget buildProductCard({
    required String imageUrl,
    required String name,
    required String oldPrice,
    required String newPrice,
    required String unit,
    required String discount,
    required bool isFavorite,
  }) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          children: [
            Row(
              children: [
                Icon(
                  Icons.favorite,
                  color: isFavorite ? Colors.pink : Colors.grey[300],
                ),
                Spacer(),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                  decoration: BoxDecoration(
                    color: Colors.red[300],
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Text(
                    discount,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                    ),
                  ),
                )
              ],
            ),
            SizedBox(height: 8),
            Image.network(imageUrl, height: 60),
            SizedBox(height: 8),
            Text(name,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
            SizedBox(height: 4),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  oldPrice,
                  style: TextStyle(
                    color: Colors.grey,
                    decoration: TextDecoration.lineThrough,
                  ),
                ),
                SizedBox(width: 4),
                Text(
                  newPrice,
                  style: TextStyle(
                      color: Colors.red, fontWeight: FontWeight.bold),
                ),
                SizedBox(width: 4),
                Text(
                  '/ $unit',
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
            SizedBox(height: 8),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12)),
              ),
              onPressed: () {},
              child: Text('Add to basket'),
            )
          ],
        ),
      ),
    );
  }
}
