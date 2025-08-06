import 'package:flutter/material.dart';

class Class3 extends StatelessWidget {
  const Class3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
         title: Text('Grid View'),
         backgroundColor: Colors.lightBlueAccent,
         centerTitle: true,
       ),

      body: GridView.builder(

          gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
          ),
        itemCount: 20,
        itemBuilder: (context,index){
            return Card(
              elevation: 10,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20)
              ),
             color: Colors.lightBlue,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.phone_android,size: 60,color: Colors.white,),
                  SizedBox(height: 10,),
                  Text(index.toString(),
                    style: TextStyle(fontSize: 25,color: Colors.black),
                 )
                ],
              ),
            );
        },

      ),
    );
  }
}
