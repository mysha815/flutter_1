import 'package:flutter/material.dart';
import 'package:flutter1/Photo.dart';
import 'package:flutter1/assignment.dart';
import 'package:flutter1/list_view.dart';

class tab extends StatelessWidget {
  const tab ({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Welcome to the page',style: TextStyle(color: Colors.white),),
          centerTitle: true,
          backgroundColor: Colors.purpleAccent,
          bottom: TabBar(
              tabs: [
                Tab(
                  icon: Icon(Icons.home),
                  text: 'home',
                ),
                Tab(
                  icon: Icon(Icons.star),
                  text: 'fav',
                ),
                Tab(
                  icon: Icon(Icons.settings),
                  text: 'settings',
                ),

              ],

          ),
        ),
        body: TabBarView(
            children: [
             // Container(
              //  height: 200,
             //   color: Colors.red,
             //   child: Text('Home',style: TextStyle(fontSize: 20),),
            //  ),
            //  Container(
              //  height: 200,
             //   color: Colors.teal,
             //   child: Text('Fav',style: TextStyle(fontSize: 20),),
            //  ),
            //  Container(
            //    height: 200,
             //   color: Colors.yellow,
            //    child: Text('Settings',style: TextStyle(fontSize: 20),),
             // ),

              Assignment(),
              Photo(),
              ListClass(),

            ],
                
        ),
        drawer: Drawer(
          child: ListView(
            children: [
              DrawerHeader(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        CircleAvatar(
                          radius: 42,
                          backgroundImage: NetworkImage(
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTez7DIj3Ult4CMzCovte3pwj6AmTo8HDTCRQ&s',
                          ),
                        ),
                        SizedBox(height: 10,),
                        Text('Mysha',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                        Text('mysha815@gmail',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 14),),
                      ],
                    ),
                  ),
              ),
              ListTile(
                title: Text('Home'),
                onTap: () {},
              ),
              Divider(
                thickness: 2,
                color: Colors.blue,
              ),
              ListTile(
                title: Text('item_1'),
                onTap: () {},
              ),
              Divider(
                thickness: 2,
                color: Colors.blue,
              ),
              ListTile(
                title: Text('LogOut'),
                onTap: () {},
              ),
              Divider(
                thickness: 2,
                color: Colors.blue,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
