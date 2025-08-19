import 'package:flutter/material.dart';
import 'package:flutter1/module_12/TodoPage.dart';
class AddNewTodoScreen extends StatefulWidget {
  const AddNewTodoScreen({super.key});

  @override
  State<AddNewTodoScreen> createState() => _AddNewTodoScreenState();
}

class _AddNewTodoScreenState extends State<AddNewTodoScreen> {
  final TextEditingController _titleTEController = TextEditingController();
  final TextEditingController _descriptipnTEController = TextEditingController();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add new todo'),
      ),

      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _titleTEController,
              decoration: InputDecoration(
                hintText: 'Title'
              ),
            ),
            TextField(
              controller: _descriptipnTEController,
              decoration: InputDecoration(
                hintText: 'Description'
              ),
            ),
            SizedBox(height: 16,),
            
            ElevatedButton(onPressed: (){
              Todo todo = Todo(title: _titleTEController.text.trim(), description: _descriptipnTEController.text.trim(), status: 'pending', createdDate:DateTime.now(),);
              Navigator.pop(context,todo);
            }, child: Text('Save'))
          ],
        ),
      ),
    );
  }
}
