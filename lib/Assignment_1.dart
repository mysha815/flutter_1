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
            
            Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQJ8nqfnmxH7hXRfEUDHi2JtMDf3_Ox69iS2g&s'),

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
