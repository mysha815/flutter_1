import 'package:flutter/material.dart';
class Food extends StatelessWidget {
  const Food({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          SizedBox(
            height: 20,
          ),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text('Fruits',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),),
          ),
          SizedBox(height: 12,),
          GridView.builder(
            padding: EdgeInsets.symmetric(horizontal: 16),
             shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: 2,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                crossAxisSpacing: 12,
                mainAxisSpacing: 12,
                childAspectRatio: 3/2,
              ),
            itemBuilder: (context,index){
              return Card(
                  elevation: 10,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                   mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                              Image.asset(
                                'asset/IMG_2351.PNG',
                                height: 100,
                                width: 100,
                                fit: BoxFit.cover,
                              ),
                              SizedBox(height: 8,),
                              Text('Watermelon',style: TextStyle(fontWeight: FontWeight.bold),),


                        ],



                  ),
                ),

                );
            },

          )
        ],
      ),
    );
  }
}
