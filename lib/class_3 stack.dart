import 'package:flutter/material.dart';

class class3Stack extends StatelessWidget {
  const class3Stack({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stack'),
        centerTitle: true,
        backgroundColor: Colors.orange,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        Stack(
          children: [
            Container(
              color: Colors.blue,
              height: 200,
              width: 200,
            ),
            Positioned(
              bottom: 50,
              left: 10,
              right: 10,

              child: Container(
                color: Colors.red,
                height: 200,
                width: 200,
              ),
            ),


            Positioned(
              bottom: 50,
              left: 20,
              right: 25,

              child: Container(
                color: Colors.purple,
                height: 200,
                width: 200,
              ),
            ),
          ],
        ),

         SizedBox(height: 10,),

          Stack(
            children: [
              CircleAvatar(
                radius: 70,
                backgroundImage: NetworkImage(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRvPjv1lHEIpzgDk_e3Sm-e4EVOzggYdb5aHA&s',
                ),
              ),

              Positioned(
                bottom: 15,
                right: 5,
                child: Container(
                  width: 20,
                  height: 20,
                  decoration: BoxDecoration(
                    color: Colors.green,
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.white,width: 3)
                    ),
                  ),
              ),

            ],
          ),
          Stack(
            children: [
              Container(
                height: 5,
                width: double.infinity,
                color: Colors.grey[300],
              ),
              AnimatedContainer(duration: Duration(seconds: 10),
                height: 5,
                width: 200,
                color: Colors.blue,
              )
            ],
          ),

          Stack(
            children: [
              Image.network('data:image/jpeg;base64,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'),

              Positioned(
                bottom: 15,
                  right: 100,
                  child: Text('Bangladesh',style: TextStyle(color: Colors.white,fontSize: 25),)),

            ],
          ),
        ],
      ),
    );
  }
}
