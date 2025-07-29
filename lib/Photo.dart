import 'package:flutter/material.dart';


class Photo extends StatelessWidget {
  const Photo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Column(
       children: [
         Stack(
           children: [
             Image.network(
                 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRm2-IiCQnnEHH1dk5HN2K60xrv8Wyu8VRW7Q&s',
                  height: 250,
               width: double.infinity,
               fit: BoxFit.cover,
             ),
             Positioned(
               bottom: 15,
                 right: 100,
                 child: Text('Bangladesh',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),)),
           ],
         ),
         SizedBox(height: 10,),

         Stack(
           children: [
             Image.network(
               'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRD___toorJRxO09qtGdnu3PBANyYHpGPUMRQ&s',
               height: 250,
               width: double.infinity,
               fit: BoxFit.cover,
             ),
             Positioned(
                 bottom: 15,
                 right: 100,
                 child: Text('Switzerland',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),)),
           ],
         ),

         SizedBox(height: 20,),

         ElevatedButton(onPressed: (){
          // Navigator.push(context, MaterialPageRoute(builder: (context)=> text()));
         }, child:Text('Submit')),
       ],
      ),
    );
  }
}
