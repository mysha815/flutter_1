import 'package:flutter/material.dart';
import 'package:flutter1/Bijoy/Register.dart';
class Shopping extends StatelessWidget {
  const Shopping({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body:SafeArea(
        child: Column(
            children: [

        Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(Icons.local_grocery_store, color: Colors.red, size: 32),
            ToggleButtons(
              borderRadius: BorderRadius.circular(8),
              isSelected: [true, false],
              onPressed: (int index) {},
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12),
                  child: Text("EN"),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12),
                  child: Text("ع"),
                ),
              ],
            ),
          ],
        ),
      ),

              

               Padding(
                   padding: const EdgeInsets.symmetric(horizontal: 16),
                     child: Image.asset('asset/IMG_2456.PNG',height: 300,),
               ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  child: Card(
                    color: Colors.white,
                    elevation: 5,
                    margin: EdgeInsets.all(1),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Padding(
                        padding: const EdgeInsets.all(12),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text('Lets Shop!',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                          SizedBox(height: 10,),

                          Text(
                              'shop from the comfort of your own home and enjoy \n easy pick up or delivery.',
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.grey[600]),
                          ),
                          SizedBox(height: 10,),
                          SizedBox(
                            width: 400,
                            child: ElevatedButton(
                                onPressed: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Register()),);
                                },
                              style: ElevatedButton.styleFrom(

                                backgroundColor: Colors.green.shade800,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12)),
                              ),
                              child: Text(
                                'Register',style: TextStyle(color: Colors.white),
                            ),
                            ),
                          ),

                          SizedBox(height: 10,),

                          SizedBox(
                            width: 400,
                            child: ElevatedButton(
                              onPressed: (){},
                              style: ElevatedButton.styleFrom(
                                
                                backgroundColor: Colors.white,
                                shape: RoundedRectangleBorder(
                                  side: BorderSide(color: Colors.green),
                                    borderRadius: BorderRadius.circular(12)),
                              ),
                              child: Text(
                                'Login',style: TextStyle(color: Colors.black),
                              ),

                            ),
                          ),
                          SizedBox(height: 20,),
                          TextButton(onPressed: (){}, child: Text('Shop as guest →',style: TextStyle(fontWeight:FontWeight.bold,color: Colors.green ),)),

                          SizedBox(height: 20,),


                        ],
                      ),

                    ),

                  ),

                ),

              ),
              SizedBox(height: 15,),
              Center(child: Text('Need help ?',style: TextStyle(color: Colors.yellow[400]),))


     ],
    ),
    ),
    );
  }
}
