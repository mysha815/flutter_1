import 'package:flutter/material.dart';
import 'package:flutter1/module_12/add%20_new_todo.dart';

class TodoPage extends StatefulWidget {
  const TodoPage({super.key});

  @override
  State<TodoPage> createState() => _TodoPageState();
}

class _TodoPageState extends State<TodoPage> {
  List<Todo> todoList =[];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Todo List'),
      ),
      body: ListView.builder(
        itemCount:todoList.length ,
          itemBuilder: (context ,index){
          Todo todo = todoList[index];

          return ListTile(
            onLongPress: (){
              todoList .remove(todo);
              setState(() {

              });
            },
            title: Text(todo.title),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(todo.description),
                Text('created date :${todo.createdDate}')
              ],
            ),
            trailing: Text(todo.status),
          );
          },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async{

         Todo? todo = await Navigator.push(context, MaterialPageRoute(builder: (context){
            return AddNewTodoScreen();
          }));

          if (todo != null){
            todoList.add(todo);
            setState(() {

            });
          }

      },
        child: Icon(Icons.add),
      ),
    );
  }
}
class Todo {
  final String title;
  final String description;
  final String status;
  final DateTime createdDate;

  Todo({required this.title, required this.description, required this.status, required this.createdDate});

}