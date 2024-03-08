import 'package:flutter/material.dart';

class AddTodo extends StatefulWidget {
  const AddTodo({super.key});

  @override
  State<AddTodo> createState() => _AddTodoState();
}

class _AddTodoState extends State<AddTodo> {
  TextEditingController todoText = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('Add Todo'),
        TextField(
          controller: todoText,
          decoration: InputDecoration(
            hintText: 'Enter Todo',
            // labelText: 'Todo',
            // icon: Icon(Icons.camera),
          ),
        ),
        ElevatedButton(
          onPressed: () {
            print(todoText.text = '');
          },
          child: Text('Add'),
        )
      ],
    );
  }
}
