import 'package:flutter/material.dart';

class Assignment1 extends StatelessWidget {
  const Assignment1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gretting App',style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(

          children: [
            Text('Hello, World!',style: TextStyle(color: Colors.red,fontSize: 20,fontWeight: FontWeight.bold)),
            SizedBox(height: 10,),

            Text('Welcome to Flutter!',style: TextStyle(color: Colors.green,fontSize: 18),),
            SizedBox(height: 20,),
            
            Image.network(
                'data:image/png;base64,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',
            ),

            SizedBox(height: 30,),

            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
                onPressed: (){
                ScaffoldMessenger.of(context).showSnackBar(
                 SnackBar(content: Text('Button Pressed')) ,
                );
                }, child: Text('Press me'),

            ),

          ],

        ),
      ),
    );
  }
}
