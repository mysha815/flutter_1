import 'package:flutter/material.dart';
import 'list_view.dart';
class class2 extends StatelessWidget {
   class2({super.key});
  
  final _formKey =GlobalKey<FormState>();
  TextEditingController phonecontroller=TextEditingController();
  TextEditingController passwordcontroller=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Class_3'),
        backgroundColor: Colors.lightBlueAccent,
        centerTitle: true,

      ),

          body: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
            Image.network(
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTlJ2u482NBtw501OOICaZxGrIcxNtG5SuqWQ&s',
              width: 400,
              height: 400,
            ),
            Text('Log in with phone and password',style: TextStyle(fontSize: 23),),
            SizedBox(
              height: 10,
            ),
            Form(
                key:_formKey ,
                child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Text('phone number',style: TextStyle(fontSize: 16,fontWeight: FontWeight.normal)),
                  TextFormField(
                    controller: phonecontroller,
                    decoration: InputDecoration(
                      hintText: 'phone number',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)
                      )
                    ),
                    validator: (value){
                      if(value == null || value.isEmpty){
                        return 'please enter your phone number';
                      }else if(value.length !=11){
                        return 'please enter your correct phone number';
                      }else{
                        return null;
                      }
                    },
                  ),
                  SizedBox(height: 20,),
            
                  TextFormField(
                    controller: passwordcontroller,
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: 'password',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)
                      )
                    ),
                    validator: (value){
                      if(value == null || value.isEmpty){
                        return 'please enter password';
                      }else if(value.length<6){
                        return 'password must be at least 6 characters';
                      }else{
                        return null;
                      }
                    },
                  ),
                  SizedBox(height: 20,),
            
                  ElevatedButton(onPressed: (){
                    if(_formKey.currentState!.validate()){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>ListClass()));
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content:Text('log in successful'))
                      );
                    }
                  }, child: Text('Log in'))
                ],
              ),
            ))
                  ],
                ),
          ),
    );


              









  }
}
