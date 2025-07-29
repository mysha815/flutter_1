import 'package:flutter/material.dart';

class ListClass extends StatefulWidget {

  const ListClass({super.key,});

  @override
  State<ListClass> createState() => _ListClassState();
}

class _ListClassState extends State<ListClass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('list view'),
        backgroundColor: Colors.lightBlueAccent,
      ),
      
      body: ListView.builder(
          itemCount: 50,
        itemBuilder: (context,index){
            return Card(
              child: ListTile(
                leading: Icon(Icons.phone),
                trailing: Icon(Icons.delete,color: Colors.red,),
                title: Text('Mysha'),
                subtitle: Text('12345'),
              ),
            );
        },
      ),
    );
  }
}
