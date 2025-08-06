
import 'package:flutter/material.dart';

class FlutterClass3 extends StatelessWidget {
  const FlutterClass3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    
      appBar: AppBar(
        title: Text('class_3'),
        centerTitle: true,
        backgroundColor: Colors.purpleAccent,
      ),
      
      body:Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              style:ElevatedButton.styleFrom(
            backgroundColor: Colors.lightBlueAccent,
                foregroundColor: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)
                  )
        ),
                onPressed:(){}, child: Text('submit')),

            SizedBox(
              height:   10,
            ),

            SizedBox(
              height:  50,
              //width: 200,
              width: double.infinity,
              child: ElevatedButton(
                  style:ElevatedButton.styleFrom(
                      backgroundColor: Colors.lightBlueAccent,
                      foregroundColor: Colors.black,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)
                      )
                  ),
                  onPressed:(){}, child: Text('submit')),
            ),
            
            OutlinedButton(onPressed: (){}, child: Text('Outline Button'))


          

          ],
        ),
      ),
    );
  }
}
