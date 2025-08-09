import 'package:flutter/material.dart';

class Register extends StatelessWidget {
  const Register({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController NAMEController = TextEditingController();
    TextEditingController EMAILController = TextEditingController();
    TextEditingController PASSWORDController = TextEditingController();

    return Scaffold(
      backgroundColor: Colors.black,

      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(80.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                    'Create new \n Account',
                  style: TextStyle(fontWeight: FontWeight.bold,fontSize: 35,color: Colors.white),
                ),
                Text(
                    'Already Registered?Log in here.',
                  style: TextStyle(fontSize: 15,color: Colors.white),
                ),
                SizedBox(height: 30,),
                TextFormField(
                  controller: NAMEController,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.grey,
                    hintText: 'Name',
                    hintStyle: TextStyle(color: Colors.white70),
                    labelText: 'NAME',
                    labelStyle: TextStyle(color: Colors.white),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16)
                  ),
                ),
                ),

                SizedBox(height: 30,),
                TextFormField(
                  controller: EMAILController,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.grey,
                    hintText: 'Email',
                    hintStyle: TextStyle(color: Colors.white70),
                    labelText: 'EMAIL',
                    labelStyle: TextStyle(color: Colors.white),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16)

                  ),
                ),
                ),

                SizedBox(height: 30,),

                TextFormField(
                  controller: PASSWORDController,
                  obscureText: true,

                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.grey,
                    hintText: 'Password',
                    hintStyle: TextStyle(color: Colors.white70,),
                    labelText: 'PASSWORD',
                    labelStyle: TextStyle(color: Colors.white),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16)
                    )
                  ),
                ),
                SizedBox(height: 20,),
                SizedBox(
                  width: 400,
                  height: 50,
                  child: ElevatedButton(onPressed: (){

                  },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orangeAccent,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      )
                    ),
                      child: Text(
                          'Sign up',
                        style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.black),

                      ),),
                ),
                SizedBox(height: 10,),
                Text(
                    'Already Have Account?\n Login!',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 15,color: Colors.white),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
