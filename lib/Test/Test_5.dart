import 'package:flutter/material.dart';
class Test5 extends StatefulWidget {
  const Test5({super.key});

  @override
  State<Test5> createState() => _Test5State();
}

class _Test5State extends State<Test5> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(
        child: Column(
          children: [
            SizedBox(height: 30,),
               Container(
                 padding: EdgeInsets.all(50),
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow:[ BoxShadow(
                    color: Colors.blue,
                    blurRadius: 10,
                    spreadRadius: 2,
                  ),
  ]
                ),


                child: Column(
                  children: [
                    Text('Balance',
                      style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.white),
                    ),

                    SizedBox(height: 10,),
                    Text('0',
                      style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30,color: Colors.white),)
                  ],
                ),
              ),
            SizedBox(height: 30,),
            
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(onPressed: (){},
                        child: Text('Add the balance',
                          style: TextStyle(color: Colors.black,fontSize: 15),),
                      style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
                    ),
                    SizedBox(width: 20,),

                    ElevatedButton(onPressed: (){}, child: Text('Remove the balance',
                      style: TextStyle(color: Colors.black,fontSize: 15),),
                      style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
                    )
                  ],


            ),


          ],
        ),
      ),
    );
  }
}
