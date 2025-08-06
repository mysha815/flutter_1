import 'package:flutter/material.dart';
class Test3 extends StatelessWidget {
  const Test3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: 42,
                       backgroundImage: AssetImage('asset/831676e9-0609-4067-b988-0d4ecc9b5bb9.jpeg'),
                      ),
                      Text('Bijoy Hossain',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20)),
                      Divider(),
                      ListTile(
                        leading: Icon(Icons.favorite),
                        title: Text('Rate this App'),
                      ),
                      ListTile(
                        leading: Icon(Icons.info),
                        title: Text('About us'),
                      ),
                      ListTile(
                        leading: Icon(Icons.login),
                        title: Text('Login'),
                      ),
                      ListTile(
                        leading: Icon(Icons.logout),
                        title: Text('Logout'),
                      ),
                    ],
                  ),
                ),

            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: Text('Drawer'),
        centerTitle: true,
        backgroundColor: Colors.purpleAccent,
      ),
    );
  }
}
