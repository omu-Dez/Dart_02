import 'dart:async';

import 'package:flutter/material.dart';

class AddTodoPage extends StatefulWidget{
  const AddTodoPage({super.key});

  @override
  State<StatefulWidget> createState() => _AddTodoPage();
}

class _AddTodoPage extends State<AddTodoPage> {
  TextEditingController _textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text('Добавить задачу')
      ),
      body: Column(
        children: [
          SizedBox(height: 100),
          TextField(
            controller: _textEditingController,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: "Название"
            ),
          ),
          SizedBox(height: 50),
          
          TextButton(onPressed: () => Navigator.of(context).pop(_textEditingController.text), child: Text("Сохранить"))
        ],
      ),
    );
  }

}