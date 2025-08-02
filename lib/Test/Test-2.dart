import 'package:flutter/material.dart';

class Test2 extends StatelessWidget {
  const Test2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ontheshelf.',style: TextStyle(color: Colors.indigo,fontWeight: FontWeight.w400),),
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              decoration: InputDecoration(
                hintText: 'Search "Spanish peaches"',
                prefixIcon: Icon(Icons.search),
                filled: true,
                fillColor: Colors.grey[200],
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
            SizedBox(height: 16,),

            Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.indigo,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                children: [
                  Icon(Icons.local_offer,color: Colors.white,size: 40,),
                  SizedBox(width: 16,),
                  Expanded(child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('50% off',style: TextStyle(
                          color: Colors.white,fontWeight: FontWeight.bold,fontSize: 22),
                      ),
                      Text(
                          'All bakery products\nafter 9 PM every day!',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  )),
                ],
              ),
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('On Sale',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                Text('Show all',style: TextStyle(color: Colors.grey),),
              ],
            ),
            SizedBox(height: 12,),


          ],
        ),
      ),
    );
  }
}
